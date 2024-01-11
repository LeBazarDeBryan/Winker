net sess>nul 2>&1||(start mshta.exe vbscript:code(close(Execute("CreateObject(""Shell.Application"").ShellExecute""%~0"",,,""RunAs"",1"^)^)^)&exit)
title Winker
@echo off
color f0
chcp 65001
mode con: cols=25 lines=9
title Winker
cls
echo  -----------------------
echo ' 1) Boost global       '
echo ' 2) Wi-Fi              '
echo ' 3) Ethernet           '
echo ' 4) Annuler les effets '
echo '-----------------------'
echo ' 0) Quitter            '
echo '-----------------------'
set /p input=' Choix : 
if %input%==1 goto GLOBAL
if %input%==2 goto WIFI
if %input%==3 goto ETHERNET
if %input%==4 goto DISABLE
exit

:GLOBAL
mode con: cols=25 lines=4
cls
echo  -----------------------
echo ' Modification... (0/9) '
echo '-----------------------'
netsh int tcp set heuristics disabled >nul
echo  -----------------------
echo ' Modification... (1/9) '
echo '-----------------------'
netsh int tcp set global chimney=disabled >nul
echo  -----------------------
echo ' Modification... (2/9) '
echo '-----------------------'
netsh int tcp set global dca=enabled >nul
echo  -----------------------
echo ' Modification... (3/9) '
echo '-----------------------'
netsh int tcp set global rsc=disabled >nul
echo  -----------------------
echo ' Modification... (4/9) '
echo '-----------------------'
netsh int tcp set global timestamps=disabled >nul
echo  -----------------------
echo ' Modification... (5/9) '
echo '-----------------------'
netsh int tcp set global initialRto=2000 >nul
echo  -----------------------
echo ' Modification... (6/9) '
echo '-----------------------'
netsh int tcp set global nonsackrttresiliency=disabled >nul
echo  -----------------------
echo ' Modification... (7/9) '
echo '-----------------------'
netsh int tsp set global maxsynretransmissions=2 >nul
echo  -----------------------
echo ' Modification... (8/9) '
echo '-----------------------'
netsh interface tcp set global autotuning=high >nul
echo  -----------------------
echo ' Modification... (9/9) '
echo '-----------------------'
exit

:WIFI
mode con: cols=25 lines=4
cls
echo  -----------------------
echo ' Modification... (0/1) '
echo '-----------------------'
netsh int ipv4 set subinterface Wi-Fi mtu=1500 store=persistent >nul
echo  -----------------------
echo ' Modification... (1/1) '
echo '-----------------------'
exit

:ETHERNET
mode con: cols=25 lines=4
cls
echo  -----------------------
echo ' Modification... (0/1) '
echo '-----------------------'
netsh int ipv4 set subinterface Ethernet mtu=1500 store=persistent >nul
echo  -----------------------
echo ' Modification... (1/1) '
echo '-----------------------'
exit

:DISABLE
mode con: cols=25 lines=4
cls
echo  ----------------------
echo ' Annulation... (0/11) '
echo '----------------------'
netsh int tcp set heuristics enabled >nul
echo  ----------------------
echo ' Annulation... (1/11) '
echo '----------------------'
netsh int tcp set global chimney=automatic >nul
echo  ----------------------
echo ' Annulation... (2/11) '
echo '----------------------'
netsh int tcp set global dca=disabled >nul
echo  ----------------------
echo ' Annulation... (3/11) '
echo '----------------------'
netsh int tcp set global rsc=default >nul
echo  ----------------------
echo ' Annulation... (4/11) '
echo '----------------------'
netsh interface tcp set global autotuning=normal >nul
echo  ----------------------
echo ' Annulation... (5/11) '
echo '----------------------'
netsh int tcp set global timestamps=default >nul
echo  ----------------------
echo ' Annulation... (6/11) '
echo '----------------------'
netsh int tcp set global initialRto=3000 >nul
echo  ----------------------
echo ' Annulation... (7/11) '
echo '----------------------'
netsh int tcp set global nonsackrttresiliency=default >nul
echo  ----------------------
echo ' Annulation... (8/11) '
echo '----------------------'
netsh int tsp set global maxsynretransmissions=2 >nul
echo  ----------------------
echo ' Annulation... (9/11) '
echo '----------------------'
netsh int ipv4 set subinterface Ethernet mtu=1400 store=persistent >nul
echo  -----------------------
echo ' Annulation... (10/11) '
echo '-----------------------'
netsh int ipv4 set subinterface Wi-Fi mtu=1400 store=persistent >nul
echo  -----------------------
echo ' Annulation... (11/11) '
echo '-----------------------'
exit