#!/bin/bash

# Создание директории /mnt/testdisk/data
mkdir -p /mnt/testdisk/data  # Создаём папку, если её ещё нет

# Добавление нескольких тестовых файлов в папку /mnt/testdisk/data
echo "Тестовый файл 1" > /mnt/testdisk/data/file1.txt
echo "Тестовый файл 2" > /mnt/testdisk/data/file2.txt
echo "Тестовый файл 3" > /mnt/testdisk/data/file3.txt

# Убедимся, что файлы успешно созданы
echo "Файлы в директории /mnt/testdisk/data:"
ls /mnt/testdisk/data

# Создание директории /mnt/backup для резервного копирования
mkdir -p /mnt/backup

# Копируем содержимое /mnt/testdisk/data в /mnt/backup с помощью rsync
rsync -???

# Проверяем содержимое директории /mnt/backup
echo "Файлы в директории /mnt/backup после локального копирования:"
ls /mnt/backup

# Настройка удалённого копирования на сервер
# Для тестирования мы используем локальную машину в качестве удалённого сервера
REMOTE_SERVER="localhost"
REMOTE_DIR="/remote_backup"

# Создаём директорию /remote_backup на удалённой машине (локальная машина в данном случае)
ssh "${REMOTE_SERVER}" "mkdir -p ${REMOTE_DIR}"

# Выполняем копирование с помощью rsync
rsync ???

# Проверяем содержимое директории /remote_backup на удалённой машине
echo "Файлы в директории ${REMOTE_DIR} на сервере после удалённого копирования:"
ssh "${REMOTE_SERVER}" "ls ${REMOTE_DIR}"