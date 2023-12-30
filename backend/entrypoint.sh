#!/bin/bash

echo "migrate database"
python manage.py migrate --no-input

# Collect static files
echo "Collect static files"
python3 manage.py collectstatic --no-input

# make admin user
DJANGO_SUPERUSER_PASSWORD=$SUPER_USER_PASSWORD python manage.py createsuperuser --username $SUPER_USER_NAME --email $SUPER_USER_EMAIL --noinput

# Start server
echo "Starting server"
# python3 manage.py runserver 0.0.0.0:8000
gunicorn server.wsgi:application --bind 0.0.0.0:8000

exec "$@"