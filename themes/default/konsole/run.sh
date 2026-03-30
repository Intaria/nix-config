#!/bin/bash

echo "- Обновляем Konsole"

# Генерируем файл конфигурации
fastfetch --gen-config


mkdir -p /home/kaminari/.config/fastfetch/

#TODO: make dynamic path

cp /mnt/ssa/Repositories/os-config/configs/default/fastfetch/config.jsonc /home/kaminari/.config/fastfetch/