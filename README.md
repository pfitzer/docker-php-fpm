PHP Docker Image
----------------
**Images**

[php-fpm:latest](https://github.com/pfitzer/docker-php-fpm/blob/master/Dockerfile.81)

**Extensions**
* Composer
* gd
* xdebug (PHP<8.3)
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
docker run -it --name php-fpm -v /path/to/your/app:/var/www/html pfitzer/php-fpm:latest php script.php
````

using the docker-compose example
````shell script
cd example
docker-compose up -d
# goto http://localhost:8080
````

[![coffee](https://cdn.buymeacoffee.com/buttons/lato-orange.png)](https://www.buymeacoffee.com/pfitzer)
