#!/bin/bash

echo "- Настраиваем Taskbar"

# Обновляем позицию
dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript "string:
var panels = panels();
for (var i = 0; i < panels.length; i++) {
    var p = panels[i];
    var widgets = p.widgets();

    for (var j = widgets.length - 1; j >= 0; j--) {
        var w = widgets[j];

        // Проверяем, есть ли на панели виджет списка окон
        if (w.type === 'org.kde.plasma.taskmanager' || w.type === 'org.kde.plasma.icontasks') {
            p.location = 'top';
            p.height = 40;

            //TODO: не работает, переделать
            p.currentConfigGroup = ['General'];
            p.writeConfig('floating', 0);

            break; 
        }

        
    }
}"

# TODO: в скрипт нужно добавить логику выставления разделителей после меню пуск и после открытых программ, ПРИ УСЛОВИИ, что после них УЖЕ нет еще одного разделителя

#if (widgets[j].type === 'org.kde.plasma.kickoff') {
#    // Добавляем разделитель
#    var s = p.addWidget('org.kde.plasma.spacer');
#    // Ставим его сразу после меню (индекс j + 1)
#    s.index = j + 1;
# 
#    break;
#}

# TODO: в скрипте нужно убрать вот эту фигню (автоматически):
# Параметры системы → Поведение рабочей среды → Края экрана.
# Найдите верхний левый угол (он будет подсвечен синим, если там назначено действие).
# Нажмите на него и выберите «Нет действия».
# Нажмите Применить.

# Убираем сетку рабочих столов
kwriteconfig6 --file kwinrc --group Effect-DesktopGrid --key TouchBorder "0"
dbus-send --print-reply --dest=org.kde.KWin /KWin org.kde.KWin.reconfigure


plasmashell --replace &