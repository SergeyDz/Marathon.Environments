sudo /bin/sh /usr/lib/zookeeper/bin/zkServer-initialize.sh
sudo service zookeeper start
sudo service zookeeper-server start
sudo service mesos-master start
sudo service mesos-slave start
sudo service marathon start