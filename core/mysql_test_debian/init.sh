#!/bin/bash
service mysql start \
&& echo "SERVICE STARTED" && sleep 1\
&& mysql -u root < SQL/ALL.sql\
&& echo "ROOT PASSWORD CHANGED + PEUPLED" && sleep 1\
&& service mysql stop \
&& echo "RESTART DONE" && sleep 1\
&& exec "$@";