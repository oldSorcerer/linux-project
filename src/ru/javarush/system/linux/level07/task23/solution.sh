#!/bin/bash

# 1. Настройка виртуального хоста для example.com
sudo tee /etc/nginx/sites-available/example.com <<EOF
server {
    listen 80;
    server_name example.com;

    root /var/www/example.com;
    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOF

# 2. Настройка виртуального хоста для test.com
sudo tee /etc/nginx/sites-available/test.com <<EOF
server {
    listen 80;
    server_name test.com;

    root /var/www/test.com;
    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOF

# 3. Активируйте оба виртуальных хоста
sudo ln -s ???
sudo ln -s ???

# 4. Проверьте конфигурацию Nginx
???

# 5. Перезапустите Nginx
???

# 6. Добавьте записи в /etc/hosts для тестирования
echo "127.0.0.1 example.com" | sudo tee -a /etc/hosts
echo "127.0.0.1 test.com" | sudo tee -a /etc/hosts

# 7. Проверьте доступность виртуальных хостов
curl -I ???
curl -I ???