#!/bin/bash

echo "- Обновляем цвета"

mkdir -p ~/.local/share/color-schemes

#TODO: make dynamic path
cp /home/kaminari/Repositories/os-config/files/kaminari-home/colors/theme.colors ~/.local/share/color-schemes

#TODO: добавить авто-применение

# Очищаем кэш
rm -rf ~/.cache/plasma*

# Перезапускаем оболочку
plasmashell --replace & disown