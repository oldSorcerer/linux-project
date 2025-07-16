#!/bin/bash

# 1. Создание виртуального диска
dd if=/dev/zero of=disk.img bs=1M count=100

# 2. Создание файловой системы ext4
???

# 3. Монтирование диска
???
???

# 4. Создание файла и симуляция повреждения данных
touch /mnt/test/testfile
sudo dd if=/dev/urandom of=/mnt/test/testfile bs=1M count=1 conv=notrunc

# 5. Отмонтирование диска
???

# 6. Проверка и исправление файловой системы
???