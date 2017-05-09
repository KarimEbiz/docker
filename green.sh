





docker network create computer-database-network

################################################## MYSQL #######################################################
docker run -it -d -p 3306:3306 --name="mysqlInstance" mysql_test_debian
# TEST : 
#	docker run -it -p 3306:3306 mysql
#	Dans le terminal normal
#	service mysql stop
#	mysql -u admincdb -p -h 127.0.0.1 -P 3306

docker network connect computer-database-network mysqlInstance


################################################## JAVA MAVEN ##################################################
docker run -it -p 8080:8080 -v "/home/ebiz/Bureau/docker-git/docker/maven_java_debian/src/:/src" -v "/home/ebiz/Bureau/docker-git/docker/maven_java_debian/war/:/war" --name="computerDatabaseInstance" maven_java_debian mvn -f "/src" clean package

# TEST : 
#	docker run -p 8080:8080 maven_java

################################################## JAVA MAVEN ##################################################

docker network connect computer-database-network computerDatabaseInstance



