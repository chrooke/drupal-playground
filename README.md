# Drupal Playground

The Drupal Playground lets you quickly set up a Drupal 8 server with drush and a choice of databases for educational use. It is not intended for production use.

# System Requirements

* You need to have Docker Community Edition and a recent edition of docker-compose. On Windows and OSX you'll have a recent version of docker-compose. On Linux, the packaged docker-compose may be too old, and you may need to follow Docker's installation instructions to upgrade it.

* 30GB or so of free space (I never actually determined how much) for holding your images and persistent storage volumes.

# Using the Drupal Playground

All commands assume you are in a terminal window with this directory as the current directory.

## Startup

Type `docker-compose up -d`.

## Once You're Up and Running

* Connect to the Drupal site by going to `http://localhost:8080` from a browser on the machine running the containers. From another machine, replace "localhost" with the IP address of the machine running the containers.
* To use drush, type `docker exec -it drupalplayground_drupal_1 /bin/bash`. You'll now be in a shell on the Drupal container, where you can run drush.
* If you need to connect directly to one of the database containers, use the docker exec command above, but substitute `drupalplayground_mysql_1` or `drupalplayground_postgres_1` for the machine name.

## Shutdown

Type `docker-compose down`.

## Starting over

If you want to completely erase you're Drupal instance and start over, wipe your storage by typing `./clear_storage.sh`.  THIS WILL ERASE EVERYTHING YOU'VE DONE!

# Initial Drupal Setup

1) Connect to the Drupal server from the web by using your browser to go to `http://localhost:8080`.
2) Go through the initial Drupal setup using the appropriate database parameters for your selected database:

## SQLite parameters
Database type: SQLite
Accept the default parameters after that.

## MySQL parameters
Database type: MySQL, MariaDB, Percona Server, or equivalent
Database name: drupal
Database username: root
Database password: example
ADVANCED OPTIONS; Database host: mysql

## PostgreSQL parameters
Database type: PostgreSQL
Database name: postgres
Database username: postgres
Database password: example
ADVANCED OPTIONS; Database host: postgres

# Notes

* Do not change the name of this directory. These instructions and the clear_storage script depend on this name. If you change it, it's on you to adjust accordingly.

# References

* Drupal container instructions: https://hub.docker.com/_/drupal/
* Adding drush: https://stackoverflow.com/questions/35743801/how-to-use-docker-with-drupal-and-drush