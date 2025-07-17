#!/bin/bash

# Создание папки для сайта
???

# Создание HTML-файла с содержимым
echo "<h1>Welcome to My Nginx Website!</h1>" | sudo tee /var/www/my_website/index.html

# Создание конфигурации сайта для Nginx
sudo bash -c 'cat > /etc/nginx/sites-available/my_website <<EOF
server {
    listen 80;
    server_name my_website.local;
    root /var/www/my_website;

    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOF'

# Активация конфигурации сайта
sudo ln -sf /etc/nginx/sites-available/my_website /etc/nginx/sites-enabled/

# Добавление записи в файл /etc/hosts
echo "127.0.0.1 my_website.local" | sudo tee -a /etc/hosts

# Перезапуск службы Nginx
???

# Вывод сообщения об успешной настройке
echo "Откройте в браузере http://my_website.local для проверки."