#!/bin/bash

# Выполняем запрос к домену google.com с помощью команды nslookup
# Результат команды сохраняем в переменную
???

# Выводим адрес DNS-сервера
echo "DNS-сервер:"
echo "$result" | grep "Server:" | awk '{print $2}'

# Выводим IP-адреса, связанные с доменом google.com
echo "IP-адреса домена google.com:"
echo "$result" | grep "Address:" | grep -v "#53" | awk '{print $2}'