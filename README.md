#TODO: проработать авто-запуск приложений



dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript "string:
var widgets = widgets();
for (var i = 0; i < widgets.length; i++) {
    var w = widgets[i];
    if (w.type === 'org.kde.plasma.taskmanager') {
        w.location = 'top'; 
    }
}"