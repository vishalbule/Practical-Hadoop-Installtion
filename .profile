export HADOOP_HOME="/usr/local/hadoop" 
export KAFKA_HOME="/usr/local/kafka"
export SPARK_HOME="/usr/local/spark"
export HIVE_HOME="/usr/local/hive-1.2.2"
export HBASE_HOME="/usr/local/hbase-1.4.6"
export SQOOP_HOME="/usr/local/sqoop-1.4.7"
export MAVEN_HOME="/usr/local/apache-maven-3.5.4"
export HADOOP_MAPRED_HOME=$HADOOP_HOME 
export HADOOP_CONF_DIR="/usr/local/hadoop/etc/hadoop"
export HADOOP_COMMON_HOME=$HADOOP_HOME 
export HADOOP_HDFS_HOME=$HADOOP_HOME 
export YARN_HOME=$HADOOP_HOME 
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native 
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin:$SPARK_HOME/bin:$KAFKA_HOME/bin:$HIVE_HOME/bin:$HBASE_HOME/bin:$SQOOP_HOME/bin:$MAVEN_HOME/bin
export HADOOP_INSTALL=$HADOOP_HOME

export CLASSPATH=$CLASSPATH:/usr/local/hadoop/lib/*:.
export CLASSPATH=$CLASSPATH:/usr/local/hive-1.2.2/lib/*:. 
