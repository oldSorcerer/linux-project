#!/bin/bash

# Проверка текущего контекста безопасности каталога /var/www/html
echo "Проверяем текущий контекст безопасности каталога /var/www/html"
current_context=$(??? | awk '{print $3}')

# Ожидаемый контекст безопасности
expected_context="httpd_sys_content_t"

# Сравниваем текущий контекст с ожидаемым
if [ "$current_context" != "$expected_context" ]; then
    echo "Контекст отличается от ожидаемого, текущий: $current_context. Изменяем контекст на $expected_context."
    
    # Изменение контекста безопасности на httpd_sys_content_t
    chcon -t $expected_context ???
    
    # Повторная проверка, чтобы убедиться, что контекст был успешно изменен
    echo "Контекст изменён. Повторная проверка:"
    ???
else
    echo "Контекст соответствует ожидаемому: $expected_context."
fi