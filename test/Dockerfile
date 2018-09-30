FROM ubuntu:16.04
LABEL kukaro <juskukaro@naver.com>
RUN apt-get -y update && apt-get -y upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server

EXPOSE 3306
RUN which mysqld
CMD ["mysqld"] -D FOREGROUND