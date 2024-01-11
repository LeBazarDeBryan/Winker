net sess>nul 2>&1||(start mshta.exe vbscript:code(close(Execute("CreateObject(""Shell.Application"").ShellExecute""%~0"",,,""RunAs"",1"^)^)^)&exit)
title Winker
@echo off
color f0
chcp 65001
mode con: cols=22 lines=4
cls
echo  --------------------
echo ' Nettoyage... (0/4) '
echo '--------------------'
ipconfig /flushdns >nul
cls
echo  --------------------
echo ' Nettoyage... (1/4) '
echo '--------------------'
ipconfig /renew >nul
cls
echo  --------------------
echo ' Nettoyage... (2/4) '
echo '--------------------'
ipconfig /renew6 >nul
cls
echo  --------------------
echo ' Nettoyage... (3/4) '
echo '--------------------'
netsh winsock reset >nul
cls
echo  --------------------
echo ' Nettoyage... (4/4) '
echo '--------------------'
exit