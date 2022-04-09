FROM mysql:5.7

RUN rm -rf /var/lib/mysql/*

COPY mysql.cnf /etc/mysql/conf.d
COPY .profile /root/.profile