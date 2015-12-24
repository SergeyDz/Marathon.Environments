rpm -Uvh http://repos.mesosphere.com/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm
yum -y install mesos device-mapper-event-libs docker python
                                      
cp /vagrant/host.conf /etc/hosts

# point this node at the mesos master
sed -i -e 's/localhost:2181/10.1.0.178:2181,10.1.1.49:2181,10.1.0.77:2181/g' /etc/mesos/zk
echo 'docker,mesos' | sudo tee /etc/mesos-slave/containerizers
echo '5mins' | sudo tee /etc/mesos-slave/executor_registration_timeout


sudo sed -i '1s/^/nameserver 10.1.0.178\n /' /etc/resolv.conf
yum -y install mc nano

service mesos-slave start
chkconfig mesos-slave on
chkconfig mesos-master off

chkconfig docker on
service docker start
#docker load --input=/vagrant/mq.tar.gz

#service Networkmanager stop
#chkconfig NetworkManager off 