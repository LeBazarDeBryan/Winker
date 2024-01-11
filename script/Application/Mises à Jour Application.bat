mode con: cols=16 lines=1
net sess>nul 2>&1||(start mshta.exe vbscript:code(close(Execute("CreateObject(""Shell.Application"").ShellExecute""%~0"",,,""RunAs"",1"^)^)^)&exit)
title Winker
@echo off
cls
chcp 65001
mode con: cols=117 lines=29
cls
winget upgrade -r -u -h --disable-interactivity --accept-package-agreements --accept-source-agreements --skip-dependencies
taskkill /f /im discord.exe >nul
winget upgrade Discord
cd %appdata%
cd ..
start Local\Discord\Update.exe --processStart Discord.exe
choco upgrade all -y
exit