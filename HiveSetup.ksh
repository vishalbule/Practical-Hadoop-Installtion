Get latest version of “hive-*-bin.tar.gz” file link from below official Hive site
---------------------------------------------------------------------------------------
https://hive.apache.org/downloads.html

Extract .tar.gz file
-------------------------
sudo tar -xzf apache-hive-1.2.2-bin.tar.gz

How to change the owner and group
-----------------------------------
sudo chown -R  vishal:root hive-1.2.2


Add below lines at the end of profile
---------------------------------------
# Set HIVE_HOME
export HIVE_HOME="/usr/local/hive-1.2.2/"
PATH=$PATH:$HIVE_HOME/bin
export PATH

Reload environment variables
------------------------------
source ~/.bashrc

Edit hive configuration file
------------------------------
gedit hive-config.sh
# Write directory path where hadoop file is there
export HADOOP_HOME="/usr/local/hadoop"
HIVE_CONF_DIR="${HIVE_CONF_DIR:-$HIVE_HOME/conf}"
export HIVE_CONF_DIR=$HIVE_CONF_DIR
export HIVE_AUX_JARS_PATH=$HIVE_AUX_JARS_PATH


Create Hive database directory on HDFS
-----------------------------------------
hadoop fs -mkdir /usr/
hadoop fs -mkdir /usr/hive
hadoop fs -mkdir /usr/hive/warehouse
hadoop fs -mkdir /tmp

Set READ/WRITE permission for warehouse and temporary directory
----------------------------------------------------------------
hadoop fs -chmod g+w /usr/hive/warehouse
hadoop fs -chmod g+w /tmp

Edit Hive environment variables
-------------------------------------
cd /usr/local/hive-1.2.2/conf
cp hive-env.sh.template hive-env.sh
vi /usr/local/hive-1.2.2/conf/hive-env.sh

export HADOOP_HOME=/usr/local/hadoop
export HADOOP_HEAPSIZE=512
export HIVE_CONF_DIR=/usr/local/hive-1.2.2/conf
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export YARN_HOME=$HADOOP_HOME

Set hive-env as executable
---------------------------------
chmod +x hive-env.sh

Hive for additional debugging information (Optional)
---------------------------------------------------------
cp hive-exec-log4j.properties.template  hive-exec-log4j.properties
cp hive-log4j.properties.template hive-log4j.properties

http://hadooptutorials.info/2017/09/15/part-2-install-hive/
