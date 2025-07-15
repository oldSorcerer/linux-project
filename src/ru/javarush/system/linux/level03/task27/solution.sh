#!/bin/bash

# Добавление задания в crontab для выполнения скрипта каждые 5 минут
(crontab -l 2>/dev/null; echo "*/5 * * * * ???.sh") | crontab -