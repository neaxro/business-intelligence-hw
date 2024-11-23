FROM mysql:8.0-debian

ARG MYSQL_ROOT_PASSWORD=pass \
    MYSQL_DATABASE=msc_onlab

ENV MYSQL_ROOT_PASSWORD=${MYSQL_DATABASE} \
    MYSQL_DATABASE=${MYSQL_DATABASE}

COPY data/ /data

COPY load.sql /docker-entrypoint-initdb.d/

EXPOSE 3306