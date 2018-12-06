sudo curl -sSL get.docker.com | sh
sudo apt-get install -y python-pip
sudo pip install setuptools
sudo pip install docker-compose

cd /home/pi
rm upload.ini
echo "file_uploads = On" > upload.ini
echo "memory_limit = 64M" >> upload.ini
echo "upload_max_filesize = 64M" >> upload.ini
echo "post_max_size = 64M" >> upload.ini
echo "max_execution_time = 600" >> upload.ini

rm docker-compose.yml
wget https://raw.githubusercontent.com/hhoareau/WordpressInDocker/master/docker-compose.yml
docker-compose up -d
