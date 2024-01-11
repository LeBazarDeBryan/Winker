net sess>nul 2>&1||(start mshta.exe vbscript:code(close(Execute("CreateObject(""Shell.Application"").ShellExecute""%~0"",,,""RunAs"",1"^)^)^)&exit)
title Winker
@echo off
color f0
chcp 65001
:Start
mode con: cols=30 lines=6
cls
echo  ----------------------------
echo ' 1) Désactivé la télémetrie '
echo '----------------------------'
echo ' 0) Quitter                 '
echo '----------------------------'
set /p input=' Choix : 
if %input%==1 goto DISABLE
exit

:DISABLE
mode con: cols=25 lines=4
cls
echo  ------------------------
echo ' Désactivation... (0/2) '
echo '------------------------'
sc config DiagTrack start= disabled
echo  ------------------------
echo ' Désactivation... (1/2) '
echo '------------------------'
sc config dmwappushservice start= disabled
echo  ------------------------
echo ' Désactivation... (2/2) '
exit