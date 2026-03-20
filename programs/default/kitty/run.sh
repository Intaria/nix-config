#!/bin/bash

echo "- Устанавливаем Kitty"

sudo pacman -S --needed kitty
sudo pacman -Rs --needed konsole

# обновляем консоль по умолчанию
kwriteconfig6 --file kdeglobals --group General --key TerminalApplication kitty
kwriteconfig6 --file kdeglobals --group General --key TerminalService kitty.desktop

# обновляем переменную окружения
echo 'export TERMINAL=kitty' >> ~/.zshrc && source ~/.zshrc

# обновляем сочетание клавиш
kglobalaccel6 org.kde.kwin /component/kwin invokeShortcut "terminal"