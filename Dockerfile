
FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install python python-pip -y
RUN mkdir /opt/app
COPY src/main.py /opt/app/
COPY requirement.txt /opt/app/
RUN pip install -r /opt/app/requirement.txt
COPY docker-entrypoint.sh /
ENTRYPOINT "/docker-entrypoint.sh"
