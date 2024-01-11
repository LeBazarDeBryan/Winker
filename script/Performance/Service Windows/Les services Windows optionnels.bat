net sess>nul 2>&1||(start mshta.exe vbscript:code(close(Execute("CreateObject(""Shell.Application"").ShellExecute""%~0"",,,""RunAs"",1"^)^)^)&exit)
title Winker
@echo off
color f0
chcp 65001
mode con: cols=40 lines=6
cls
echo  --------------------------------------
echo ' 1) Désactivé les services optionnels '
echo '--------------------------------------'
echo ' 0) Quitter                           '
echo '--------------------------------------'
set /p input=' Choix : 
if %input%==1 goto DISABLE
exit

:DISABLE
sc config "FrameServer" start= disabled
sc config "BthAvctpSvc" start= disabled
sc config "bthserv" start= disabled
sc config "fhsvc" start= disabled
exit