#!/bin/bash

# Используем команду `ss` для отображения всех активных соединений TCP и UDP 
# и сохраняем вывод в файл `active_connections.txt`.
ss -tuna > active_connections.txt

# Анализируем файл `active_connections.txt`, чтобы найти первое соединение в состоянии ESTABLISHED.
# Извлекаем первую строку с состоянием ESTABLISHED.
first_established=$(grep 'ESTABLISHED' active_connections.txt | head -n 1)

# Если установленное соединение найдено, извлекаем локальный и удалённый адреса.
if [[ -n "$first_established" ]]; then
  # Разбираем строку, чтобы получить локальный и удалённый адреса.
  # Формат строки зависит от версии `ss`; предполагаем стандартный формат.
  local_address=$(echo "$first_established" | awk '{print $5}')
  remote_address=$(echo "$first_established" | awk '{print $6}')
  
  # Выводим результаты анализа.
  echo "Первое установленное соединение:"
  ???
  ???
else
  echo "Соединений в состоянии ESTABLISHED не найдено."
fi