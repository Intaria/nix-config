#!/bin/bash

echo "- Обновляем иконки"

mkdir -p ~/.local/share/icons
cd ~/.local/share/icons

# Копируем иконки
git clone https://bitbucket.org/dirn-typo/yet-another-monochrome-icon-set.git

# Устанавливаем в KDE
kwriteconfig6 --file kdeglobals --group Icons --key Theme "yet-another-monochrome-icon-set"

# Очищаем кэш
rm -rf ~/.cache/icon-cache.kcache
sync && -f ~/.local/share/icons/*

# Перезапускаем оболочку
plasmashell --replace & disown