#!/bin/bash

echo "- Обновляем иконки"

mkdir -p ~/.local/share/icons
cd ~/.local/share/icons

# Копируем иконки
git clone https://github.com/CachyOS/char-white.git

# Устанавливаем в KDE
kwriteconfig6 --file kdeglobals --group Icons --key Theme "char-white"

# Очищаем кэш
rm -rf ~/.cache/icon-cache.kcache
sync && -f ~/.local/share/icons/*

# Перезапускаем оболочку
plasmashell --replace & disown