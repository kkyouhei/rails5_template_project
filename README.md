

# boot project

rails5 template project
capistrano and unicorn, CircleCI, rspec settings already.

# Getting Started

1.clone this repository

```bash
$ git clone
```

2.TODO

```
$ rake notes
```

3.modify mysql config

modify environment value in docker-compose.yml
```
environment:
  MYSQL_DATABASE: your_database_name
  MYSQL_ROOT_PASSWORD: fasjkdlw29
  MYSQL_USER: user_name
```

modify environment value in config/database.yml
```
default: &default
  adapter: mysql2
  encoding: utf8
  timeout: 5000
  host: db
  username: user_name
  password: fasjkdl29
```

4.docker start up 

```
$ docker-compose up
```
