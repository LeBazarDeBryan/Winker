net sess>nul 2>&1||(start mshta.exe vbscript:code(close(Execute("CreateObject(""Shell.Application"").ShellExecute""%~0"",,,""RunAs"",1"^)^)^)&exit)
title Winker
@echo off
color f0
chcp 65001
mode con: cols=38 lines=7
cls
echo  ------------------------------------
echo ' 1) Désactivé les services inutiles '
echo '------------------------------------'
echo ' 0) Quitter                         '
echo '------------------------------------'
set /p input=' Choix: 
if %input%==1 goto DISABLE
exit

:DISABLE
sc config "StiSvc" start= disabled
sc config "lmhosts" start= disabled
sc config "PeerDistSvc" start= disabled
sc config "SCardSvr" start= disabled
sc config "wmiApSrv" start= disabled
sc config "TrkWks" start= disabled
sc config "SessionEnv" start= disabled
sc config "DusmSvc" start= disabled
sc config "WpcMonSvc" start= disabled
sc config "ShellHWDetection" start= disabled
sc config "diagsvc" start= disabled
sc config "DialogBlockingService" start= disabled
sc config "DiagTrack" start= disabled
sc config "CscService" start= disabled
sc config "MsKeyboardFilter" start= disabled
sc config "WinRM" start= disabled
sc config "AppMgmt" start= disabled
sc config "p2pimsvc" start= disabled
sc config "MapsBroker" start= disabled
sc config "RasAuto" start= disabled
sc config "SEMgrSvc" start= disabled
sc config "RasMan" start= disabled
sc config "p2psvc" start= disabled
sc config "WdiSystemHost" start= disabled
sc config "vmicguestinterface" start= disabled
sc config "SNMPTrap" start= disabled
sc config "AppVClient" start= disabled
sc config "Netlogon" start= disabled
sc config "seclogon" start= disabled
sc config "SharedAccess" start= disabled
sc config "AxInstSV" start= disabled
sc config "tzautoupdate" start= disabled
sc config "CertPropSvc" start= disabled
sc config "PNRPsvc" start= disabled
sc config "RemoteRegistry" start= disabled
sc config "vmicvss" start= disabled
sc config "RemoteAccess" start= disabled
sc config "vmicshutdown" start= disabled
sc config "diagnosticshub.standardcollector.service" start= disabled
sc config "ScDeviceEnum" start= disabled
sc config "WbioSrvc" start= disabled
sc config "SensorService" start= disabled
sc config "BDESVC" start= disabled
sc config "RetailDemo" start= disabled
sc config "lfsvc" start= disabled
sc config "PcaSvc" start= disabled
sc config "NetTcpPortSharing" start= disabled
sc config "BTAGService" start= disabled
sc config "WerSvc" start= disabled
sc config "DPS" start= disabled
sc config "SensrSvc" start= disabled
sc config "vmicrdv" start= disabled
sc config "HvHost" start= disabled
sc config "TabletInputService" start= disabled
sc config "ScDeviceEnum" start= disabled
sc config "vmickvpexchange" start= disabled
sc config "vmicvmsession" start= disabled
sc config "WMPNetworkSvc" start= disabled
sc config "icssvc" start= disabled
sc config "vmicheartbeat" start= disabled
sc config "vmictimesync" start= disabled
sc config "PhoneSvc" start= disabled
sc config "UevAgentService" start= disabled
sc config "wisvc" start= disabled
sc config "shpamsvc" start= disabled
sc config "Spooler" start= disabled
sc config "SCPolicySvc" start= disabled
sc config "SysMain" start= disabled
sc config "Fax" start= disabled
sc config "Themes" start= disabled
sc config "WebClient" start= disabled
sc config "WSearch" start= disabled
sc config "RmSvc" start= disabled
sc config "BTAGService" start= disabled
sc config "TapiSrv" start= disabled
sc config "defragsvc" start= disabled
sc config "edgeupdate" start= disabled
exit