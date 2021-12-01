FROM python:3.8-buster

RUN apt-get update && apt-get install screen -y

ADD main /main
ADD auxiliary /auxiliary
ADD requirements.txt /requirements.txt
ADD run.bash /run.bash

RUN pip install -r /requirements.txt

EXPOSE 8000
EXPOSE 8001


