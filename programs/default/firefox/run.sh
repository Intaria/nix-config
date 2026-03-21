#!/bin/bash

echo "- Устанавливаем Firefox"

sudo pacman -S --needed cachyos-firefox
sudo pacman -S --needed firefox-i18n-ru

sudo pacman -S --needed firefox-ublock-origin