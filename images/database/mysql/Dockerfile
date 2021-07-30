FROM mysql:5.7

COPY .profile /root/.profile

RUN rm -rf /var/lib/mysql/*

COPY mysql.cnf /etc/mysql/conf.d
