# Requirements

In order to use the YellowCube Magento 2 extension you will need to meet the following requirements:

1. **YellowCube account**: In order to use the YellowCube shipping services you will first need to obtain an account. To do that you'll need to get in touch with the Swiss Post by using the [online contact form](https://www.post.ch/en/business-solutions/logistics-and-warehousing/yellowcube/yellowcube-contact-form). Post's staff will lead you through the onboarding process and provide you with the account information. This will include, among other information, things like _Sender ID_, _Receiver_, _Depositor Number_, _Partner Number_ and _Plant-ID_. You will need those when configuring the shop.
2. **Magento 2 site**_:_ You will obviously need a working Magento 2 installation. If you are not sure how to do that consider checking the relevant [documentation sections](https://devdocs.magento.com/guides/v2.3/install-gde/install-quick-ref.html) or finding professional support. Magento 2, and YellowCube Magento 2 Extension are all open source software which means that there are many experts with the necessary expertise available.
3. **Server requirements**:
   * _Magento:_ 2.3 or newer.
   * _PHP version_: YellowCube Magento 2 Extension will work with any supported version of PHP 7.1+.
   * _PHP extensions_:
     * _SOAP_ : YellowCube uses [SOAP](https://en.wikipedia.org/wiki/SOAP) to communicate with individual stores. YellowCube Magento 2 Extension requires [PHP SOAP extension](http://php.net/manual/en/book.soap.php) to be installed on the server for that reason. If you are unsure if that is the case you should check with your hosting provider.
     * [_DOM_](https://www.php.net/manual/en/intro.dom.php)
     * [_Multibyte String_](https://www.php.net/manual/en/book.mbstring.php)
   * _MySQL database_: MySQL version 5.6 or greater OR MariaDB version 10.0 or greater is required.
4. **HTTPS support**: eCommerce websites usually deal with potentially sensitive information. In order to protect those we **strongly** suggest using HTTPS encryption. If you are not sure where to get the certificates we suggest you to check [Let's encrypt, the free, automated and open certificate authority](https://letsencrypt.org/).
5. **YellowCube PHP SDK**: YellowCube Magento 2 Extension depends on the [official PHP SDK](https://github.com/swisspost-yellowcube/yellowcube-php). If you will install the plugin using the [suggested method](installation.md) you don't need to do anything as it is already bundled in the official package.
6. **Store locale**: Keep in mind that the store locale must be set to one of the following locale codes supported by YellowCube:
   * `DE`
   * `FR`
   * `IT`
   * `EN-GB`

For the general requirements please follow [Magento 2 system requirements](https://devdocs.magento.com/guides/v2.3/install-gde/system-requirements-tech.html).

## License

This extension is licensed under OSL v.3.0. Some classes and JavaScript files are published under MIT license.
