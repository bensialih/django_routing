
cd /main

gunicorn --workers=2 'main.wsgi' -b :8000 -D

# screen -d -m python manage.py runserver 0.0.0.0:8000

cd /auxiliary

gunicorn --workers=2 'auxiliary.wsgi' -b :8001 -D

service nginx start

# python manage.py runserver 0.0.0.0:8001
