cd /main

screen -d -m python manage.py runserver 0.0.0.0:8000

cd /auxiliary

python manage.py runserver 0.0.0.0:8001
