#!/bin/bash

# 1. Откройте Cron для редактирования
sudo crontab -e

# 2. Добавьте задачу для автоматического обновления сертификатов и перезагрузки Nginx
# Эта строка настроит ежедневное обновление сертификатов в 00:00 с перезагрузкой Nginx
(sudo crontab -l 2>/dev/null; echo "??? && ???") | sudo crontab -

# 3. Проверьте, что задача добавлена в Cron
sudo crontab -l

# 4. Протестируйте обновление сертификатов вручную
sudo certbot renew --dry-run && sudo systemctl reload nginx
