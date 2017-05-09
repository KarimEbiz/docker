


# ----------------------- OFFICIAL ----------------------------
docker pull jenkins

# ---------------------------- CORE ---------------------------
docker build -t java_debian ./core/java_debian/. 
docker build -t mysql_test_debian ./core/mysql_test_debian/.
docker build -t mysql_prod_debian ./core/mysql_prod_debian/.

# ----------------------- BASED ON CORE -----------------------
docker build -t maven_java_debian ./maven_java_debian/.
docker build -t tomcat_java_debian ./tomcat_java_debian/. 
