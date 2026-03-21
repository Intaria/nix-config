#!/bin/bash

echo "- Обновляем рабочий стол"

mkdir -p ~/.local/share/plasma/desktoptheme/custom

cp -r /home/kaminari/Repositories/os-config/files/kaminari-home/desktop/* ~/.local/share/plasma/desktoptheme/custom/

# TODO: добавить применение новой темы

# Очищаем кэш
rm -rf ~/.cache/plasma*

# Перезапускаем оболочку
plasmashell --replace & disown
