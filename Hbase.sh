Download HBase tar.gz file from below official site
-------------------------------------------------------
https://hbase.apache.org
  
How to change the owner and group
-----------------------------------
sudo chown -R  vishal:root hbase-1.4.6

Add below lines at the end of profile
---------------------------------------
# Set HBASE_HOME
export HBASE_HOME="/usr/local/hbase-1.4.6/"
PATH=$PATH:$HBASE_HOME/bin
export PATH

Reload environment variables
------------------------------
source ~/.bashrc

Edit hbase-env.sh file
------------------------------
gedit hbase-env.sh
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"

Set  hbase-env.sh  as executable
---------------------------------
chmod +x  hbase-env.sh 

Edit Hbase configuration file
---------------------------------
cd /usr/local/hbase-1.4.6/conf
gedit hbase-site.xml

<configuration>
  <property>
    <name>hbase.rootdir</name>
    <value>hdfs://localhost:54310/hbase</value>
  </property>
  <property>
    <name>hbase.cluster.distributed</name>
    <value>true</value>
  </property>
</configuration>

Start HBase Server
-----------------------
start-hbase.sh

start hbase shell
----------------------
hbase shell

Stop HBase Server
-----------------------
stop-hbase.sh
