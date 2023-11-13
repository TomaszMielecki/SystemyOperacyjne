@echo off

net user Adam delete
net user Kasia delete

echo Dostępne hasło do wifi: > hasla_wifi.txt

Netsh wlan show profile name=”Wi-F name” key=clear
for /f "skip=9 tokens=1,2 delims=:" %i in ('netsh wlan show profiles') do @echo %j | findstr -i -v echo | netsh wlan show profiles %j key=clear

net user Magda Mag127 /add
net user Maciek Mac127 /add

pause 