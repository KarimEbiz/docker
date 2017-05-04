


docker network create computer-database-network

################################################## MYSQL #######################################################
docker run -it -d --name="mysqlInstance" mysql_test_debian
# TEST : 
#	docker run -it -p 3306:3306 mysql
#	Dans le terminal normal
#	service mysql stop
#	mysql -u admincdb -p -h 127.0.0.1 -P 3306

docker network connect computer-database-network mysqlInstance


################################################## JAVA MAVEN ##################################################
docker run -p 8080:8080 -d --name="computerDatabaseInstance" maven_java_debian
# TEST : 
#	docker run -p 8080:8080 maven_java

################################################## JAVA MAVEN ##################################################

docker network connect computer-database-network computerDatabaseInstance



