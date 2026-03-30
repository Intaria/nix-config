#!/bin/bash

echo "- Обновляем обои"
#TODO: get data about user from extermal 

#TODO: make dynamic path

mkdir -p /home/kaminari/Изображения/wallpapers

cp -r /mnt/ssa/Repositories/os-config/files/default/wallpapers/* /home/kaminari/Изображения/wallpapers/

plasma-apply-wallpaperimage /home/kaminari/Изображения/wallpapers/1.jpg