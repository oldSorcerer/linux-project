#!/bin/bash

# Получение AAAA-записей домена amazon.com с использованием команды dig
# Используем команду dig с опцией +short, чтобы получить только записи IPv6 (AAAA)
ipv6_addresses=$( ??? )

# Проверка, есть ли найденные записи
if [ -z "$ipv6_addresses" ]; then
  echo "IPv6-адреса для домена amazon.com не найдены."
else
  # Выводим все найденные IPv6 адреса, каждая запись на новой строке
  echo "Найденные IPv6-адреса для домена amazon.com:"
  echo "$ipv6_addresses"
fi