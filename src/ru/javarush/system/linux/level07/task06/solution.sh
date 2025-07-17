#!/bin/bash

# 1. Создайте директорию для сайта
sudo mkdir -p /var/www/mytestsite.com

# 2. Создайте файл index.html с содержимым
echo "<h1>Welcome to My Test Site</h1>" | sudo tee /var/www/mytestsite.com/index.html

# 3. Создайте конфигурационный файл для виртуального хоста
sudo tee /etc/nginx/sites-available/mytestsite.com <<EOF
server {
    listen 80;
    server_name mytestsite.com;

    root /var/www/mytestsite.com;
    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOF

# 4. Активируйте конфигурацию с помощью символической ссылки
???

# 5. Проверьте конфигурацию на ошибки
???

# 6. Перезапустите сервер Nginx
???

# 7. Добавьте запись в /etc/hosts для тестирования
echo "127.0.0.1 mytestsite.com" | sudo tee -a /etc/hosts

# 8. Уведомление для проверки
echo "Откройте в браузере http://mytestsite.com для проверки."