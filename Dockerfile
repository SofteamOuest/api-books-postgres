FROM postgres:10-alpine
MAINTAINER Mehdi EL KOUHEN <mehdi.elkouhen@gmail.com>

ADD init_db.sh /docker-entrypoint-initdb.d/

USER postgres