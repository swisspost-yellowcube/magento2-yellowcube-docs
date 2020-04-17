# Background updates

YellowCube Magento 2 Extension requires configured cron in order to provide background updates for your products, orders, and shipments. Please follow the [Configure and run cron](https://devdocs.magento.com/guides/v2.3/config-guide/cli/config-cli-subcommands-cron.html) in order to make sure you have correct cron configuration.

The extension provides the following cron configuration:

* Updates order status information **every 15 minutes**.
* Synchronises stock inventory data with YellowCube **every day at 5 AM**.
* Checks for YellowCube shipment status updates **every 5 minutes**.
* Synchronises the status of the YellowCube products **every 5 minutes**.

