#!/bin/bash

echo "- Обновляем окна"

mkdir -p ~/.local/share/aurorae/themes/Custom

cp -r /home/kaminari/Repositories/os-config/files/kaminari-home/windows/* ~/.local/share/aurorae/themes/Custom/

# TODO: добавить применение новой темы

# Очищаем кэш
rm -rf ~/.cache/plasma*

# Перезапускаем оболочку
plasmashell --replace & disown
