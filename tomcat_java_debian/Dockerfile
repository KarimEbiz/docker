FROM java

MAINTAINER kyahiaoui@e-biz.fr

RUN groupadd tomcat && \
    useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat && \
    cd /tmp && \
    wget http://apache.mindstudios.com/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz && \
    mkdir /opt/tomcat && \
    tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1 && \
    cd /opt/tomcat && \
    chgrp -R tomcat /opt/tomcat && \
    chmod -R g+r conf && \
    chmod g+x conf && \
    chown -R tomcat webapps/ work/ temp/ logs/

CMD ["/opt/tomcat/bin/catalina.sh" , "run"]