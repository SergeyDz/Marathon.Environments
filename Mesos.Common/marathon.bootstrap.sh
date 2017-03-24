./marathon.deploy.sh kafka.docker.json
sleep 220s
curl http://10.1.1.231:7007/api/broker/add?broker=0&cpus=1&mem=256
sleep 10s
curl http://10.1.1.231:7007/api/broker/start?broker=0
sleep 10s
curl http://10.1.1.231:7007/api/topic/add?topic=test

./marathon.deploy.sh kafka-manager.docker.json
./marathon.deploy.sh chronos.docker.json