#!/bin/bash

# Указание URL сайта
URL="http://example.com"

# Проверяем доступность сайта с помощью команды curl
# Если код возврата равен 200 - сайт доступен
if curl -s --head --request GET "$URL" | grep "200 OK" > /dev/null; then
    STATUS="доступен"
else
    STATUS="недоступен"
fi

# Формируем строку с датой, временем и результатом проверки
LOG_ENTRY=" ??? "

# Записываем строку в лог файл
echo "$LOG_ENTRY" >> site_check.log