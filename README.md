# django-gql-skeleton
A Django starter project template for building GraphQL APIs. Get up and running in production with 4 simple steps.

### Features

- Support for Django 3 and Python 3.7
- In-built `docker-compose` support to make API deployable quickly
- By default supports PostgreSQL
- Uses nginx as reverse proxy on gunicorn workers
- Easily scale by increasing the container count

### Quickstart

1. `django-admin startproject --template=https://github.com/kinescope-tech/django-gql-skeleton/archive/master.zip --extension=py,dockerfile,yml,sh,env,conf my_project`

    If gives SSL error then [download](https://github.com/kinescope-tech/django-gql-skeleton/archive/master.zip) and use `--template` flag like this.

    `django-admin startproject --template=~/Downloads/master.zip --extension=py,dockerfile,yml,sh,env,conf my_project`

2. `cd my_project`
3. `docker-compose build`
4. `docker-compose up`

### Contributing

> Suggestions for improvement are welcomed.
