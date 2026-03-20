#!/bin/bash

echo "- Устанавливаем Plasmusic Toolbar"

knsrc-tool plasmoids install 2128143

# Вспомогательные пакеты для контроля за музыкой
sudo pacman -S --needed playerctl python-dbus