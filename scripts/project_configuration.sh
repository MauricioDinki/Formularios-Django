#!/usr/bin/env bash
cd /home/ubuntu/
source venv/bin/activate
cd forms
mv enviroment .env
python manage.py makemigrations
python manage.py migrate
sudo python manage.py collectstatic --noinput --clear
