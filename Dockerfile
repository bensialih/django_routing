FROM python:3.8-buster

RUN apt-get update && apt-get install screen nginx -y

ADD main /main
ADD auxiliary /auxiliary
ADD requirements.txt /requirements.txt

ADD nginx/django.conf /etc/nginx/conf.d/django.conf

RUN pip install -r /requirements.txt

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD run.bash /run.bash

EXPOSE 8000
EXPOSE 8001
EXPOSE 80
