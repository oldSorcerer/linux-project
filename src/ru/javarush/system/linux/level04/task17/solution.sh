#!/bin/bash

# Указание адреса и порта для проверки
HOST="localhost"
PORT=22

# Проверка доступности порта с использованием nc
if ??? $HOST $PORT 2>/dev/null; then
  echo "Порт $PORT на $HOST доступен для подключения (SSH)."
else
  echo "Порт $PORT на $HOST недоступен для подключения."
fi