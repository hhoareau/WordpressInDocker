sudo curl -sSL get.docker.com | sh
sudo apt-get install -y python-pip
sudo pip install setuptools
sudo pip install docker-compose

cd /home/pi
rm uploads.ini
echo "file_uploads = On" > uploads.ini
echo "memory_limit = 64M" >> uploads.ini
echo "upload_max_filesize = 64M" >> uploads.ini
echo "post_max_size = 64M" >> uploads.ini
echo "max_execution_time = 600" >> uploads.ini

sudo docker rm -f f80_wp_container
sudo docker rm -f f80_db_container

rm docker-compose.yml -y
wget https://raw.githubusercontent.com/hhoareau/WordpressInDocker/master/docker-compose.yml
sudo docker-compose up -d
