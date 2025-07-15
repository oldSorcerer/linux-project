#!/bin/bash

# Получение списка сетевых интерфейсов
INTERFACES= ???

# Флаг для проверки наличия активных интерфейсов
FOUND_ACTIVE=false

# Проверка каждого интерфейса
for IFACE in $INTERFACES; do
  # Проверка наличия IPv4-адреса на интерфейсе
  IPV4=$(ip -4 addr show $IFACE | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

  if [ -n "$IPV4" ]; then
    echo "Интерфейс: $IFACE, IPv4-адрес: $IPV4"
    FOUND_ACTIVE=true
  fi
done

# Если активные интерфейсы не найдены, вывод сообщения
if [ "$FOUND_ACTIVE" = false ]; then
  echo "Активные интерфейсы или IPv4-адреса не найдены."
fi
