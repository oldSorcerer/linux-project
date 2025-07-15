#!/bin/bash

# Установка SSH-сервера
sudo apt update
sudo apt install -y openssh-server

# Проверка статуса SSH-сервера
??? | grep "Active: active (running)" > /dev/null

if [ $? -eq 0 ]; then
  echo "SSH-сервер активен."
else
  echo "Запуск SSH-сервера..."
  ???
fi

# Перезапуск SSH-сервера
???

# Финальная проверка
??? | grep "Active: active (running)" > /dev/null && echo "SSH-сервер успешно работает." || echo "Ошибка: SSH-сервер не запущен."
