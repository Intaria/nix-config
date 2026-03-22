#!/bin/bash

echo "- Настраиваем Taskmanager"

# TODO: в скрипт нужно добавить логику выставления разделителей после меню пуск и после открытых программ, ПРИ УСЛОВИИ, что после них УЖЕ нет еще одного разделителя

#if (widgets[j].type === 'org.kde.plasma.kickoff') {
#    // Добавляем разделитель
#    var s = p.addWidget('org.kde.plasma.spacer');
#    // Ставим его сразу после меню (индекс j + 1)
#    s.index = j + 1;
# 
#    break;
#}

plasmashell --replace &