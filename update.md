# Update

Please follow this guideline to update your YellowCube Magento 2 Extension in an existing installation.

## Composer <a id="method-b-using-the-admin-interface"></a>

If you have already installed your plugin through [Composer](installation.md#using-the-admin-interface) the easiest way to update is to run the following commands:

```text
composer update swisspost-yellowcube/magento2-yellowcube
bin/magento setup:upgrade
```

## Always test after updates <a id="always-test-after-updates"></a>

Make sure to test the connection after any update.

We recommend you to go to the YellowCube [configuration page](configuration.md#basic-configuration) and hit _Save config_.

Additionally, we highly recommend you to check [updating a product](products.md#product-registration-and-update) and [place an order](shipments.md) to make sure everything works as expected.

If there is an unexpected error message, first double check the certificate path and filename matches the configuration.

