#!/bin/bash
# Использование команды lsblk для получения устройств без монтирования
# Фильтруем устройства, у которых нет точки монтирования (поле MOUNTPOINT пустое)
unmounted_devices=$( ??? | awk '$2 == "" {print $1}')

# Если не найдено ни одного незамонтированного устройства
if [ -z "$unmounted_devices" ]; then
  echo "Нет незамонтированных устройств."
  exit 0
fi

# Проверяем каждое найденное устройство, есть ли на нем файловая система
for device in $unmounted_devices; do
  # Используем команду blkid для проверки информации о файловой системе
  blkid_output=$(blkid /dev/"$device" 2>/dev/null)
  
  if [ -z "$blkid_output" ]; then
    echo "Устройство /dev/$device не имеет файловой системы."
  else
    echo "Устройство /dev/$device имеет файловую систему:"
    echo "$blkid_output"
  fi
done