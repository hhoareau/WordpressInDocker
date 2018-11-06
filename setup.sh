sudo curl -sSL get.docker.com | sh
sudo apt-get install -y python-pip
sudo pip install docker-compose

rm docker-compose.yml
wget https://raw.githubusercontent.com/hhoareau/WordpressInDocker/master/docker-compose.yml
docker-compose up -d
