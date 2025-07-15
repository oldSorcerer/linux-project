#!/bin/bash

# Добавление задачи в crontab для выполнения скрипта каждые 10 минут
(crontab -l 2>/dev/null; echo "*/10 * * * * cpu_alert.sh") | crontab -