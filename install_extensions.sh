echo "Downloading extensions"
sudo docker exec -it php-fpm docker-php-ext-install \
    pdo \
    pdo_mysql \
    mysqli
echo "Restarting..."
sudo docker-compose restart
echo "Conplete"