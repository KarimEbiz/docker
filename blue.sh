


docker network create computer-database-network

################################################## MYSQL #######################################################
docker run -it -d --name="mysqlprodInstance" mysql_prod_debian
# TEST : 
#	docker run -it -p 3306:3306 mysql
#	Dans le terminal normal
#	service mysql stop
#	mysql -u admincdb -p -h 127.0.0.1 -P 3306

docker network connect computer-database-network mysqlprodInstance


################################################## TOMCAT ##################################################
docker run -p 8080:8080 -d --name="tomcatInstance" tomcat_java_debian


docker network connect computer-database-network tomcatInstance



