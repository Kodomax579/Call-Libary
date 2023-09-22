@echo off
setlocal enabledelayedexpansion

:loop
REM Überprüfen, ob MySQL auf Port 3306 lauscht
netstat -ano | find "3306" >NUL
if %errorlevel%==0 (
    REM Überprüfen, ob Apache auf Port 80 lauscht
    netstat -ano | find "80" >NUL
    if %errorlevel%==0 (
        java -jar Libary.jar
        goto :check_program
    ) else (
        XAMPP\mysql_start.bat
        
        goto:loop
    )
) else (
    XAMPP\mysql_start.bat
    goto:loop
)

:check_program
REM Hier überwachen, ob das Programm "Libary.jar" nicht mehr ausgeführt wird
tasklist | find /i "java.exe" > nul
if errorlevel 1 (
    REM Das Programm "Libary.jar" wurde geschlossen, also xampp_stop ausführen
    XAMPP\mysql_stop.bat
    timeout /t 1 /nobreak

    REM Schließe das Eingabefenster (hier angenommen, dass es sich um "cmd.exe" handelt)
    taskkill /f /im cmd.exe
    goto: endloop
) else (
    REM Das Programm "Libary.jar" läuft immer noch, warte kurz und überprüfe erneut
    timeout /t 5 /nobreak
    goto :check_program
)

:endloop
endlocal

