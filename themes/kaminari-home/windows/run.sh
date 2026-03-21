#!/bin/bash

echo "- Обновляем окна"

mkdir -p ~/.local/share/aurorae/themes/custom

cp -r /home/kaminari/Repositories/os-config/files/kaminari-home/windows/* ~/.local/share/aurorae/themes/custom/

# TODO: добавить применение новой темы

# Очищаем кэш
rm -rf ~/.cache/plasma*

# Перезапускаем оболочку
plasmashell --replace & disown
