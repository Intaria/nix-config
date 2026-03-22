#!/bin/bash

echo "- Обновляем Kvantum"

mkdir -p ~/.config/Kvantum/Custom/

cp -r /home/kaminari/Repositories/os-config/configs/kaminari-home/kvantum/* ~/.config/Kvantum/Custom/

# TODO: добавить применение
#Appearance > Application Style -> Kvantum

# Очищаем кэш
rm -rf ~/.cache/plasma*

# Перезапускаем оболочку
plasmashell --replace & disown
