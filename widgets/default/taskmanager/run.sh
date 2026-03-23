#!/bin/bash

echo "- Настраиваем виджет Taskmanager"

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
            p.height = 44;

            //TODO: не работает, переделать
            p.currentConfigGroup = ['General'];
            p.writeConfig('floating', 0);

            break; 
        }

        
    }
}"

#TODO: открепляем ВСЕ иконки 

#TODO: меняем оформления виртуальных рабочих столов (виджета)


# TODO: в скрипте нужно убрать вот эту фигню (автоматически):
# Параметры системы → Поведение рабочей среды → Края экрана.
# Найдите верхний левый угол (он будет подсвечен синим, если там назначено действие).
# Нажмите на него и выберите «Нет действия».
# Нажмите Применить.


#TODO: открепить иконку "Быстрые настройки", "Параметры системы" и закрепить "Консоль" (kitty)