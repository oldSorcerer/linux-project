#!/bin/bash

# Для Nginx: настройка перенаправления HTTP → HTTPS
sudo tee /etc/nginx/sites-available/redirect_http_to_https <<EOF
server {
    listen 80;
    server_name example.com www.example.com;

    return 301 https://\$host\$request_uri;
}
EOF

# Активируйте конфигурацию и перезапустите Nginx
???
???

# Для Apache: настройка перенаправления HTTP → HTTPS
sudo tee /etc/apache2/sites-available/redirect_http_to_https.conf <<EOF
<VirtualHost *:80>
    ServerName example.com
    ServerAlias www.example.com
    Redirect permanent / https://example.com/
</VirtualHost>
EOF

# Активируйте конфигурацию и перезапустите Apache
???
???
