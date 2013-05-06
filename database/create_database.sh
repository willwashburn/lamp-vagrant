#!/bin/bash

PASSWORD="root"

Q1="CREATE DATABASE IF NOT EXISTS datastore;"
Q2="GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root';"
Q3="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}"
 
mysql -uroot -proot -e "$SQL"
mysql -uroot -proot datastore < database_schema.sql;
mysql -uroot -proot datastore < database_data.sql;
