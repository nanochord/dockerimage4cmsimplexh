FROM php:8.2-apache
COPY ./cmsimplexh /var/www/html/
RUN chmod -R a+rw /var/www/html/assets/css/
RUN chmod -R a+rw /var/www/html/cmsimple/languages/
RUN chmod -R a+rw /var/www/html/content/
RUN chmod -R a+rw /var/www/html/userfiles/
RUN chmod a+rw /var/www/html/cmsimple/.sessionname
RUN chmod a+rw /var/www/html/cmsimple/config.php
RUN chmod a+rw /var/www/html/cmsimple/log.txt
RUN chmod a+rw /var/www/html/cmsimple/debug-log.txt
RUN chmod a+rw /var/www/html/content/content.htm
