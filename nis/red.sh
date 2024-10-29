#!/bin/bash

H=$(hostname)
I=$(hostname -I | cut -d " " -f 1)
M=$(ifconfig | grep netmask | grep 255.255.254.0 | cut -d " " -f 13)
P=$(route -n | grep 0.0.0.0 | grep 192.168.4.254 | cut -d " " -f 10)
mc=$(ifconfig | grep ether | grep e4:54:e8:88:23:c9| cut -d " " -f 10)

echo ""
echo "Información de la red "
echo ""
echo "Name Host: $H "
echo "IP: $I"
echo "Máscara: $M "
echo "Puerta de enlace: $P "
echo "Dirección MAC: $mc "
echo ""
exit 0
