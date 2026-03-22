#!/bin/bash

echo "- Устанавливаем Smart Video Wallpaper"

#TODO

#Запускаем плагин
kpackagetool6 --type Plasma/Wallpaper --install [путь_к_файлу]

# Очищаем кэш
rm -rf ~/.cache/icon-cache.kcache
sync && -f ~/.local/share/icons/*

# Перезапускаем оболочку
plasmashell --replace & disown