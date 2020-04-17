# Installation

## Getting the plugin <a id="getting-the-plugin"></a>

Upon installing [Magento 2](https://devdocs.magento.com/guides/v2.3/install-gde/bk-install-guide.html), you'll proceed with YellowCube Magento 2 Extension installation. The extension can be installed through Composer or manually.

### Composer <a id="using-the-admin-interface"></a>

Go to the root directory of your Magento 2 website and run the following commands:

```diff
composer require swisspost-yellowcube/magento2-yellowcube
bin/magento module:enable Swisspost_YellowCube
bin/magento setup:upgrade
```

It is worth mentioning that the YellowCube Magento 2 Extension currently isn't available from the Magento Marketplace. We are aware that this would simplify the installation process significantly and are currently working on getting it included. We will update this document as soon as this is achieved.

##  <a id="activation"></a>

