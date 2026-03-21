#!/bin/bash

# Подключаем зависимости

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

# Определяем цвета уведомлений

GREEN='\033[0;32m'
RED='\033[0;31m'
DEFAULT='\033[0m'

# Начинаем установку

echo -e "${GREEN}Запускаем установку пресетов для CachyOS ${DEFAULT}"

# Получаем список пресетов

HOSTS=(${BASE_DIR}/hosts/*/)

PRESETS=("default")

for i in "${!HOSTS[@]}"; do
    PRESETS[$i + 1]=$(basename "${HOSTS[$i]}")
done

# Выбираем пресет из списка

CHOOSEN_PRESETS=("default")

echo "- Выберите пресет:"

PS3="(1-${#PRESETS[@]}): "

select ITEM in "${PRESETS[@]}"; do
    if [[ -n "$ITEM" ]]; then
        if [[ $ITEM != ${CHOOSEN_PRESETS[0]} ]]; then
            CHOOSEN_PRESETS+=($ITEM)
        fi

        break
    else
        echo -e "${RED}Неверный выбор, попробуйте еще раз${DEFAULT}"
    fi
done

# Устанавливаем программы




# Обновляем систему

sudo pacman -Syu