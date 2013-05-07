#!/bin/bash
PASSWORD='root';
PASSWORDB='abcd1234';

Q1="CREATE DATABASE IF NOT EXISTS datastore;"
Q2="GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root';"
Q4="GRANT ALL ON *.* TO 'root'@'10.0.2.15' IDENTIFIED BY 'root';"
Q3="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q4}${Q3}"
 
mysql -uroot -p${PASSWORDB} -e "$SQL"
mysql -uroot -p${PASSWORD} datastore < /home/vagrant/database/database_schema.sql;
mysql -uroot -p${PASSWORD} datastore < /home/vagrant/database/database_data.sql;
