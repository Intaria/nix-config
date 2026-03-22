#!/bin/bash

echo "- Устанавливаем Firefox"

sudo pacman -S --needed cachyos-firefox
sudo pacman -S --needed firefox-i18n-ru

#TODO: подумать, мб использовать другой блокировщик
sudo pacman -S --needed firefox-ublock-origin

#TODO: media.hardwaremediakeys.enabled - false
#TODO: dom.media.mediasession.enabled = false

#TODO: пкм по верхней части - настройки панели инструментов - в самом низу ставим галочку для появления заголовка

#TODO: скрыть переключатель картинка в картинке