yum install docker

sudo usermod -aG docker root

sudo systemctl restart docker

mkdir ~/wordpress && cd ~/wordpress

docker run -e MYSQL_ROOT_PASSWORD=<password> -e MYSQL_DATABASE=wordpress --name wordpressdb -v "$PWD/database":/var/lib/mysql -d mariadb:latest

docker ps

docker pull wordpress

docker run -e WORDPRESS_DB_PASSWORD=<password> --name wordpress --link wordpressdb:mysql -p 80:80 -v "$PWD/html":/var/www/html -d wordpress
