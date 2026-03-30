#!/bin/bash

echo "- Обновляем Happ"


#TODO
#TOOO меняем system на gvisor
#TODO auto-start в свернутом режиме
#TODO: добавить программы напрямую
# Посмотреть, как будет работать с включателем TUN (по идее, нам достаточно PROXY)

# отключаем ру-сайты от vpn:
# - для телефонов: открываем routing.help с включеным vpn или копируем эту ссылку: https://github.com/hydraponique/roscomvpn-routing/blob/main/HAPP/DEFAULT.DEEPLINK
# - для компьютера: TODO !!! 

# для запуска приложений под vpn 
# - запускаем их в виде `{app_name} --proxy-server="socks5://127.0.0.1:10808"``
# - в идеале, добавляем в иконку для запуска настройку:
# nano ~/.local/share/applications/discord.desktop
# Должно выглядеть примерно так:
# Exec=env http_proxy=socks5://127.0.0.1:10808 https_proxy=socks5://127.0.0.1:10808 /usr/bin/discord --proxy-server="socks5://127.0.0.1:10808"
# Для дискорда (из-за голосовой связи) желательно добавить следующий флаг: --force-webrtc-ip-handling-policy=disable_non_proxied_udp