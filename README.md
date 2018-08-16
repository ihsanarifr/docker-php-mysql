# PHP & MySQL [![Build Status](https://travis-ci.org/ihsanarifr/docker-php-mysql.svg?branch=master)](https://travis-ci.org/ihsanarifr/docker-php-mysql) [![GitHub version](https://badge.fury.io/gh/ihsanarifr%2Fdocker-php-mysql.svg)](https://badge.fury.io/gh/ihsanarifr%2Fdocker-php-mysql)

Docker running PHP and MySQL is Simple.

## Overview

1. [Install prerequisites](#install-prerequisites)

    Before installing project make sure the following prerequisites have been met.

2. [Clone the project](#clone-the-project)

    We’ll download the code from its repository on GitHub.

3. [Run the application](#run-the-application)

    By this point we’ll have all the project pieces in place.
___

## Install prerequisites

For now, this project has been mainly created for Unix `(Linux/MacOS)`. Perhaps it could work on Windows.

All requisites should be available for your distribution. The most important are :

* [Git](https://git-scm.com/downloads)
* [Docker](https://docs.docker.com/engine/installation/)
* [Docker Compose](https://docs.docker.com/compose/install/)

Check if `docker-compose` is already installed by entering the following command : 

```sh
which docker-compose
```

Check Docker Compose compatibility :

* [Compose file version 2 reference](https://docs.docker.com/compose/compose-file/)

The following is optional but makes life more enjoyable :

```sh
which make
```

On Ubuntu and Debian these are available in the meta-package build-essential. On other distributions, you may need to install the GNU C++ compiler separately.

```sh
sudo apt install build-essential
```

### Images to use
* [MySQL](https://hub.docker.com/_/mysql/)
* [PHP 7.0-Apache](https://hub.docker.com/_/php/)

This project use the following ports :

| Server     | Port |
|------------|------|
| MySQL      | 3306 |
| Apache     | 80   |
| Apache SSL | 443  |

___

## Clone the project

To install [Git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git), download it and install following the instructions :

```sh
git clone https://github.com/ihsanarifr/docker-php-mysql.git
```

Go to the project directory :

```sh
cd docker-php-mysql
```

### Project tree

```sh
.
├── README.md
├── web
│    └── Dockerfile
├── .env.example
├── docker-compose.yml
└── db
```

___

## Run the application

1. Open your favorite browser :

    * [http://localhost/](http://localhost/)

___

## Help us

Any thought, feedback or (hopefully not!)