#!/bin/bash

# Определяем список сайтов для проверки
SITES=("example.com" "google.com" "stackoverflow.com")

# Указываем путь к лог-файлу
LOG_FILE="/var/log/site_status.log"

# Проверяем, существует ли лог-файл, если нет - создаем его
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
fi

# Основной цикл проверки сайтов
for SITE in "${SITES[@]}"
do
    # Проверяем доступность сайта с помощью команды ping
    if ping -c 1 -W 2 "$SITE" > /dev/null 2>&1; then
        STATUS="is reachable"
    else
        STATUS="is unreachable"
    fi

    # Записываем результат проверки в лог-файл с указанием даты и времени
    ???
done