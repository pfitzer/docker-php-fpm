PHP Docker Image
----------------
**Images**

[php-fpm:latest](https://github.com/pfitzer/docker-php-fpm/blob/master/Dockerfile)

[php-fpm:7.3](https://github.com/pfitzer/docker-php-fpm/blob/master/Dockerfile.73)

**Extensions**
* Composer
* gd
* xdebug
* PDO MySql
* session
* json
* mbstring 
* bcmath 
* exif 
* fileinfo 
* gettext 
* iconv 
* opcache 
* soap 
* dom 
* zip
* xmlrpc
* xmlwiter
* phar
* xml
* sockets
* posix

**pull**
````shell script
$ docker pull pfitzer/php-fpm
````

Running PHP apps
----------------
#### Running image
Run the PHP-FPM image, mounting a directory from your host.

````shell script
docker run -it --name php-fpm -v /path/to/your/app:/app pfitzer/php-fpm:latest php script.php
````

[!coffee](https://cdn.buymeacoffee.com/buttons/lato-orange.png)](https://www.buymeacoffee.com/pfitzer)
