@echo off
cd /D %~dp0

cmd.exe /C start "" /MIN call "@@BITROCK_INSTALLDIR@@\killprocess.bat" "mysqld.exe"
echo Mysql shutdowm ...
if not exist mysql\data\%computername%.pid GOTO exit
echo Delete %computername%.pid ...
del mysql\data\%computername%.pid

:exit
