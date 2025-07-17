#!/bin/bash

# Создание папки для сайта
???

# Создание HTML-файла index.html с содержимым
echo "<h1>Welcome to My Apache Website!</h1>" | sudo tee /var/www/my_apache_site/index.html

# Создание конфигурационного файла для Apache
sudo bash -c 'cat > /etc/apache2/sites-available/my_apache_site.conf << EOL
<VirtualHost *:80>
    ServerName my_apache_site.local
    DocumentRoot /var/www/my_apache_site

    <Directory /var/www/my_apache_site>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/my_apache_site_error.log
    CustomLog \${APACHE_LOG_DIR}/my_apache_site_access.log combined
</VirtualHost>
EOL'

# Активируем конфигурацию сайта
sudo a2ensite my_apache_site.conf

# Отключаем стандартный сайт (если необходимо)
sudo a2dissite 000-default.conf

# Добавление записи в hosts файл
echo "127.0.0.1 my_apache_site.local" | sudo tee -a /etc/hosts 

# Перезагрузка Apache для применения настроек
???

# Вывод сообщения об успешной настройке
echo "Откройте http://my_apache_site.local в браузере, чтобы проверить сайт."