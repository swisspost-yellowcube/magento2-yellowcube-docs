#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

# Connect Travis CI with GitHub
# Enable Travis CI integration for repo at https://travis-ci.org/
# Create a key
# > ssh-keygen -t rsa -b 4096 -C "ci@md-systems.ch" -f deploy_key -N ''
# Encrypt key
# > travis encrypt-file deploy_key
# Keys are automatically added to Travis
# Edit .travisci.yml with the new variable names.
# Add the deploy_key.pub to GitHub deploy keys and drop it.
# Add all other information and push to trigger the build.

SOURCE_BRANCH="master"
TARGET_BRANCH="gh-pages"

function doCompile {
  ./scripts/compile.sh
}

# Pull requests and commits to other branches shouldn't try to deploy, just build to verify
if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ]; then
    echo "Skipping deploy; will only do it on master branch."
    #exit 0
fi

# Save some useful information
REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}
SHA=`git rev-parse --verify HEAD`

# Clone the existing gh-pages for this repo into out/
# Create a new empty branch if gh-pages doesn't exist yet (should only happen on first deply)
git clone $REPO out
cd out
git checkout $TARGET_BRANCH || git checkout --orphan $TARGET_BRANCH
cd ..

# Clean out existing contents
rm -rf out/**/* || exit 0

# Run our compile script
doCompile

# Load deploy key.
chmod 600 scripts/deploy_key
eval `ssh-agent -s`
ssh-add scripts/deploy_key

# Now let's go have some fun with the cloned repo
cd out
# Caution gitbook clones the source folder. Remove scripts and keys inside.
rm -r scripts package*.json

git config user.name "Travis CI"
git config user.email "$COMMIT_AUTHOR_EMAIL"

# If there are no changes to the compiled out (e.g. this is a README update) then just bail.
if git diff --quiet; then
    echo "No changes to the output on this push; exiting."
    exit 0
fi

# Commit the "changes", i.e. the new version.
# The delta will show diffs between new and old versions.
git add -A .
git commit -m "Deploy to GitHub Pages: ${SHA}"

# Now that we're all set up, we can push.
git push $SSH_REPO $TARGET_BRANCH
