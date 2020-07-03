#!/bin/bash

echo "initial loading..."
cp -a static/* /staticfiles/

python3 manage.py migrate_schemas

gunicorn {{project_name}}.wsgi:application --bind :23907 --workers=3 --keep-alive=180 --timeout=180
