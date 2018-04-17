FROM python:2

ARG SLEEP

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir /data
COPY apache-fake-log-gen.py /data/apache-fake-log-gen.py
WORKDIR /data

#CMD python apache-fake-log-gen.py -n 0 -o CONSOLE -s $SLEEP
