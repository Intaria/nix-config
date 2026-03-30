#!/bin/bash

echo "- Обновляем Kvantum"

mkdir -p ~/.config/Kvantum/Custom/

cp -r /mnt/ssa/Repositories/os-config/configs/kaminari-home/kvantum/* ~/.config/Kvantum/Custom/

# TODO: добавить применение
#Appearance > Application Style -> Kvantum dark

# Очищаем кэш
rm -rf ~/.cache/plasma*

# Перезапускаем оболочку
plasmashell --replace & disown
