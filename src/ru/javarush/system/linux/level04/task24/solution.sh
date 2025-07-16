#!/bin/bash

# Переменная для имени пользователя
USER_NAME="your_username"

# Генерация SSH-ключей
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ""

# Копирование публичного SSH-ключа на сервер
ssh-copy-id $USER_NAME@127.0.0.1

# Настройка sshd_config для отключения аутентификации по паролю
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

# Перезапуск SSH-сервера
???

# Проверка подключения по ключу
???