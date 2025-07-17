#!/bin/bash

# 1. Создайте директорию для сайта
???

# 2. Переместите файл index.html в эту директорию
???

# 3. Настройте веб-сервер Nginx
sudo tee /etc/nginx/sites-available/mywebsite <<EOF
server {
    listen 80;
    server_name localhost;

    root /var/www/mywebsite;
    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOF

# 4. Активируйте конфигурацию, создав символическую ссылку
???

# 5. Проверьте конфигурацию на ошибки
???

# 6. Перезапустите сервер Nginx
???

# 7. Уведомление для проверки
echo "Откройте в браузере http://localhost для проверки сайта."