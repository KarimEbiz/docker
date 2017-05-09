
 docker network create computer-database-network


 docker run  -d -p 3306:3306 --name="mysqlInstance" mysql_test_debian

 docker network connect computer-database-network mysqlInstance

 docker run \
-v "/home/ebiz/Bureau/docker-git/docker/maven_java_debian/src/:/src" \
-v "/home/ebiz/Bureau/docker-git/docker/maven_java_debian/war/:/war" \
--name="computerDatabaseInstance" \
maven_java_debian \
mvn -f "/src" clean package

 docker network connect computer-database-network computerDatabaseInstance


