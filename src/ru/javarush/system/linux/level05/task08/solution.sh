#!/bin/bash

# Очистка существующих правил
iptables -F
iptables -X

# Установка политики по умолчанию: блокировать все входящие соединения
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Разрешение входящих соединений для порта SSH (22)
???

# Разрешение входящих соединений для порта HTTP (80)
???

# Разрешение входящих соединений для порта HTTPS (443)
???

# Разрешение входящих соединений от localhost (для корректной работы системы)
???

# Разрешение входящих соединений для уже установленных соединений
???

# Вывод текущих правил iptables
iptables -L -v

# Сохранение настроек iptables (для систем с утилитой iptables-persistent)
iptables-save > /etc/iptables/rules.v4

# Для систем с утилитой iptables-persistent также необходимо сохранять IPv6 правила, если используются
if [ -f /etc/iptables/rules.v6 ]; then
    ip6tables-save > /etc/iptables/rules.v6
fi