#!/bin/bash

# 1. Найдите UUID устройства
blkid /dev/sdb1
UUID=$(blkid -o value -s UUID /dev/sdb1)

# 2. Создайте точку монтирования
sudo mkdir -p /mnt/usb-auto

# 3. Отредактируйте файл /etc/fstab и добавьте строку (замените <ваш_UUID> и ext4 на свои значения)
echo "UUID=<ваш_UUID> /mnt/usb-auto ext4 defaults 0 2" | sudo tee -a /etc/fstab

# 4. Протестируйте настройки
???

# 5. Проверьте содержимое точки монтирования
???

# 6. Перезагрузите систему и проверьте монтирование
???
???