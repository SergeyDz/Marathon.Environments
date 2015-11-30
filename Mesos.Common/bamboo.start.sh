docker run -t -i --rm -p 8000:8000 -p 80:80 -e MARATHON_ENDPOINT=http://192.168.33.10:8080 -e BAMBOO_ENDPOINT=http://192.168.33.10:8000 -e BAMBOO_ZK_HOST=192.168.33.10:2181 -e BAMBOO_ZK_PATH=/bamboo docker.io/thefactory/bamboo -bind=":8000"