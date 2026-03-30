#!/bin/bash

echo "- Обновляем Steam"

cd /home/kaminari/.steam/steam/millennium/themes/

git clone git@github.com:ricewind012/juxtematic.git

# заходим в millenium внутри steam, вкладка themes и жмем USE
# переопределяем акцентный цвет на #17212b