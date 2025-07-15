#!/bin/bash

# Указываем переменные для локального пользователя и удалённого сервера
REMOTE_USER="username"       # Замените 'username' на имя пользователя на сервере
REMOTE_HOST="192.168.1.1"    # Замените '192.168.1.1' на IP-адрес или хост сервера

# 1. Генерация SSH-ключей на локальной машине
if [ ! -f ~/.ssh/id_rsa ]; then
    echo "Генерация SSH-ключей..."
    ???
    echo "SSH-ключи созданы."
else
    echo "SSH-ключи уже существуют, пропускаем генерацию."
fi

# 2. Создание папки `.ssh` на сервере, если её нет
ssh $REMOTE_USER@$REMOTE_HOST "mkdir -p ~/.ssh && chmod 700 ~/.ssh"

# 3. Копирование публичного ключа на сервер
cat ~/.ssh/id_rsa.pub | ssh $REMOTE_USER@$REMOTE_HOST "cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

# 4. Подключение к серверу для проверки
ssh -o PasswordAuthentication=no $REMOTE_USER@$REMOTE_HOST "echo 'Подключение без пароля успешно!'"