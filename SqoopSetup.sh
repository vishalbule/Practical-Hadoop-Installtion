Install Sqoop (version 1.4.x)
-------------------------------
Ensure that you download version that matches with your installed hadoop major version.
If your hadoop version is 2.x.x then download sqoop version that ends with 2.x.x.
For example if your hadoop version is 2.8.1 then download sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz.
Please note that sqoop version can be different like 1.x.x.
Go to Downloads directory and download latest tar.gz file for sqoop.
https://hbase.apache.org

Extract .tar.gz file
-------------------------
sudo tar -zxf sqoop-1.4.7.bin__hadoop-2.6.0.tar.gz

How to change the owner and group
-----------------------------------
sudo chown -R  vishal:root sqoop-1.4.7

Add below lines at the end of profile
---------------------------------------
# Set SQOOP_HOME
export SQOOP_HOME="/usr/local/sqoop-1.4.7/"
PATH=$PATH:$SQOOP_HOME/bin
export PATH

if you are planning to import data from MySQL database then you need to copy related jar file in Sqoop installation directory.
-----------------------------------------------------------------------------------------------------------------------------------
cp /usr/share/java/mysql-connector-java.jar $SQOOP_HOME/lib

