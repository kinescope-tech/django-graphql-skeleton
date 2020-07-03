#!/bin/bash

echo "Copying static assets..."
cp -a static/* /staticfiles/
echo "Migrating databse changes..."
python3 manage.py migrate
echo "Starting gunicorn workers..."
gunicorn {{project_name}}.wsgi:application --bind :23907 --workers=3
