FROM drupal:8

RUN apt-get update &&       \
    apt-get install -y      \
        mysql-client        \
        postgresql-client

RUN php -r "readfile('https://s3.amazonaws.com/files.drush.org/drush.phar');" > drush \
&& chmod +x drush \
&& mv drush /usr/local/bin \
&& echo "y" | /usr/local/bin/drush init

