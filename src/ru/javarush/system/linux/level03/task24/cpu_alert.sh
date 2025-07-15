#!/bin/bash

# Получение текущей средней нагрузки на CPU за последнюю минуту из /proc/loadavg
cpu_load=$(awk '{print $1}' /proc/loadavg)

# Указание порога нагрузки
threshold=1.0

# Сравнение нагрузки с порогом
if (( $(echo "$cpu_load > $threshold" | bc -l) )); then
    # Если нагрузка выше порога, записать сообщение в лог-файл
    ???
fi