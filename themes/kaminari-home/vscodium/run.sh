#!/bin/bash

echo "- Обновляем Vscodium"

# через доп. свойства открываем при открытии на 3 рабочем столе + удалить проверку по заголовку

mkdir -p /home/kaminari/.config/VSCodium/User/

#TODO: make dynamic path

cp /mnt/ssa/Repositories/os-config/configs/kaminari-home/vscodium/settings.json /home/kaminari/.config/VSCodium/User/
