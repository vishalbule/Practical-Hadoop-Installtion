Install MySQL 
-------------------
$ sudo apt-get install mysql-server

Install the MySQL Java Connector
----------------------------------
sudo apt-get install libmysql-java

Create soft link for connector in Hive lib directory or copy connector jar to lib folde
------------------------------------------------------------------------------------------
ln -s /usr/share/java/mysql-connector-java.jar $HIVE_HOME/lib/mysql-connector-java.jar

Adjusting User Authentication and Privileges
------------------------------------------------
sudo mysql
mysql > SELECT user,authentication_string,plugin,host FROM mysql.user;
mysql >ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'hadoop';
mysql>FLUSH PRIVILEGES;
mysql>SELECT user,authentication_string,plugin,host FROM mysql.user;


mysql -u root -p
Enter password:
 
mysql> CREATE DATABASE metastore; 
mysql> USE metastore;
mysql> SOURCE /usr/local/hive-1.2.2/scripts/metastore/upgrade/mysql/hive-schema-1.2.0.mysql.sql;

mysql> CREATE USER 'hiveuser'@'%' IDENTIFIED BY 'hivepassword';
mysql> GRANT all on *.* to 'hiveuser'@localhost identified by 'hivepassword';
mysql>  flush privileges;


mysql> CREATE USER 'hiveuser'@'%' IDENTIFIED BY 'hivepassword';
mysql> GRANT all on *.* to 'hiveuser'@localhost identified by 'hivepassword';
mysql>  flush privileges;

Create hive-site.xml ( If not already present) in $HIVE_HOME/conf folder with the configuration below
-----------------------------------------------------------------------------------------------------------
<configuration>
   <property>
    <name>system:java.io.tmpdir</name>
    <value>/tmp/hive/java</value>
  </property>
  <property>
    <name>system:user.name</name>
    <value>${user.name}</value>
  </property>
  <property>
   <property>
      <name>javax.jdo.option.ConnectionURL</name>
      <value>jdbc:mysql://localhost/metastore?createDatabaseIfNotExist=true&amp;autoReconnect=true&amp;useSSL=false</value>
      <description>metadata is stored in a MySQL server</description>
   </property>
   <property>
      <name>javax.jdo.option.ConnectionDriverName</name>
      <value>com.mysql.jdbc.Driver</value>
      <description>MySQL JDBC driver class</description>
   </property>
   <property>
      <name>javax.jdo.option.ConnectionUserName</name>
      <value>hiveuser</value>
      <description>user name for connecting to mysql server</description>
   </property>
   <property>
      <name>javax.jdo.option.ConnectionPassword</name>
      <value>hivepassword</value>
      <description>password for connecting to mysql server</description>
   </property>
</configuration> 

create table test_vishal(id int, name string);

mysql -u root -p
Enter password:
mysql> use metastore; 
mysql> select * from TBLS;



https://dzone.com/articles/how-configure-mysql-metastore
https://saurzcode.in/2015/01/configure-mysql-metastore-hive/
