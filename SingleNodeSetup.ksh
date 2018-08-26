Java install in Ubantu
--------------------------------

	How to Install JAVA 8 on Ubuntu 18.04/16.04, LinuxMint 18/17
	https://tecadmin.net/install-oracle-java-8-ubuntu-via-ppa/


	To find the default Java path
	readlink -f /usr/bin/java | sed "s:bin/java::"

	/usr/lib/jvm/java-11-openjdk-amd64/
	export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/

	How to uninstall JDK from Ubuntu 16.04?
		           https://www.roseindia.net/answers/viewqa/linux/32405-How-to-uninstall-JDK-from-Ubuntu-16-04-.html


Hadoop install on Ubantu
-------------------------------

	Installing Hadoop in Pseudo Distributed Mode
	https://www.tutorialspoint.com/hadoop/hadoop_enviornment_setup.htm
	
	How to change the owner and group
	chgrp -R  vishal:root hadoop-2.8.2
	chown -R  vishal:root spark
	chown -R  vishal:root kafka
	

Scala Install  on Ubantu
--------------------------------
	download scala-2.*.* .deb version in current directory 
	sudo wget www.scala-lang.org/files/archive/scala-2.10.4.deb
	sudo dpkg -i scala-2.1*.*.deb
	sudo apt-get update
	sudo apt-get install scala

	
SBT install on Ubantu
--------------------------------

https://www.scala-sbt.org/1.0/docs/Installing-sbt-on-Linux.html


echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt

sudo apt-get purge
