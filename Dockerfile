FROM debian:stretch

CMD sudo su

RUN apt-get update -y && apt-get install fio -y

RUN mkdir /fio

ADD job.fio /fio/

ADD script.sh /fio

CMD chmod+x script.sh

ENTRYPOINT ["/script.sh"]
