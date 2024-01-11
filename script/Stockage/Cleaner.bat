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
cleanmgr /sagerun:65535
cls
echo  --------------------
echo ' Nettoyage... (1/4) '
echo '--------------------'
del /f /s /q %windir%\prefetch\*.* & rd /s /q %windir%\temp & md %windir%\temps
cls
echo  --------------------
echo ' Nettoyage... (3/4) '
echo '--------------------'
mode con: cols=41 lines=1
rmdir /s %systemdrive%\$Recycle.bin
mode con: cols=21 lines=4
cls
echo  --------------------
echo ' Nettoyage... (4/4) '
echo '--------------------'
exit