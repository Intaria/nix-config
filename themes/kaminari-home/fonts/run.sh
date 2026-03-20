#!/bin/bash

echo "- Обновляем шрифты"

# Устанавливаем шрифт
sudo pacman -S --needed ttf-jetbrains-mono

# Основной шрифт
kwriteconfig6 --file kdeglobals --group General --key font "JetBrains Mono,10,-1,5,50,0,0,0,0,0"

# Моноширенный шрифт
#kwriteconfig6 --file kdeglobals --group General --key fixed "JetBrains Mono,10,-1,5,50,0,0,0,0,0"

# Для заголовков окон
#kwriteconfig6 --file kwinrc --group WM --key font "JetBrains Mono,10,-1,5,50,0,0,0,0,0"

# Обновляем KDE
dbus-send --type=signal /KWin org.kde.KWin.reloadConfig
dbus-send --type=signal /KGlobalSettings org.kde.KGlobalSettings.notifyChange int32:0 int32:0