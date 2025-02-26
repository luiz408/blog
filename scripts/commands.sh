#!/bin/sh

#O shell irá encerrar a execução do script se algum comando falhar

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  echo "waiting for Postgres Database Startup($POSTGRES_HOST:$POSTGRES_PORT)..."
  sleep 0.1
done

echo "Postgres Database Started Successfully($POSTGRES_HOST:$POSTGRES_PORT)" 
Python manage.py collectstatic
Python manage.py migrate
Python manage.py runserver