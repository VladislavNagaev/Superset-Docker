# Superset Docker

## Quick Start

To run superset, you first need to run [postgres](https://github.com/VladislavNagaev/Postgres-Docker) and [redis](https://github.com/VladislavNagaev/Redis-Docker) containers.

Create database for superset:
~~~
# open postgres container
docker exec -it postgres bash

# run psql
psql --username=postgres --dbname=postgres

# create user and db
CREATE USER superset WITH PASSWORD 'superset';
CREATE DATABASE superset;
GRANT ALL PRIVILEGES ON DATABASE superset TO superset;
ALTER DATABASE superset OWNER TO superset;

# exit from psql
exit

# exit from container
exit
~~~

Depoyment of containers:
~~~
docker-compose -f docker-compose.yaml up
~~~

Default WebUi user/passowrd: [admin/admin]


## Administartion

Creating of new admin profile:
~~~
docker exec -it superset-app bash

superset fab create-admin \
--username your_username \
--firstname your_firstname \
--lastname your_lastname \
--email your_email \
--password your_password
~~~

Changing of password:
~~~
docker exec -it superset-app bash

superset fab reset-password \
--username admin \
--password your_password
~~~

## Interfaces:
---
* [Superset WebUi](http://127.0.0.1:8088/login)

## Technologies
---
Project is created with:
* Superset version: 2.0.1
* Docker verion: 23.0.1
* Docker-compose version: v2.16.0
