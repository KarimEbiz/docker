use mysql;
update user set password=PASSWORD("root") where User='root';
flush privileges;

\. /SQL/1-SCHEMA.sql
\. /SQL/2-PRIVILEGES.sql
\. /SQL/3-ENTRIES.sql