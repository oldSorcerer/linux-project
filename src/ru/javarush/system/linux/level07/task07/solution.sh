#!/bin/bash

# 1. Создание корневой директории для второго виртуального хоста
sudo mkdir -p /var/www/othersite.com

# 2. Создание файла index.html с необходимым содержимым
echo '<h1>Welcome to Other Site!</h1>' | sudo tee /var/www/othersite.com/index.html 

# 3. Создание конфигурационного файла для виртуального хоста othersite.com
sudo bash -c 'cat > /etc/apache2/sites-available/othersite.com.conf << EOF
<VirtualHost *:80>
    ServerName othersite.com
    ServerAlias www.othersite.com

    DocumentRoot /var/www/othersite.com

    <Directory /var/www/othersite.com>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/othersite.com.error.log
    CustomLog \${APACHE_LOG_DIR}/othersite.com.access.log combined
</VirtualHost>
EOF'

# 4. Активация виртуального хоста
???

# 5. Перезапуск Apache сервера для применения изменений
???