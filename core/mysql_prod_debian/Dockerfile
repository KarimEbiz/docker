FROM debian:jessie

MAINTAINER kyahiaoui@e-biz.fr

ENV DEBIAN_FRONTEND noninteractive



# UPDATE & INSTALL MYSQL ------------------------------------------------------
#	> -yq make it silent
#	> Removing useless packages
# --------------------------------------------------------------------
RUN apt-get update && \
    apt-get install -y mysql-server -yq debconf-utils && \
    echo mysql-server mysql-server/root_password password root | debconf-set-selections && \
    echo mysql-server mysql-server/root_password_again password root | debconf-set-selections && \
    echo rm -rf /var/lib/apt/lists/*

# ADDING USEFULL FILES MYSQL -----------------------------------------



ADD CFG/bind_0.cnf /etc/mysql/conf.d/bind_0.cnf

ADD init.sh /init.sh
ADD SQL /SQL
RUN chmod 755 /*.sh

ENTRYPOINT ["/init.sh"]

EXPOSE 3306

CMD ["mysqld_safe"]

