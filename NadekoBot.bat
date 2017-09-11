@ECHO OFF
TITLE NadekoBot Menu by Gremagol (Simplyfied)
SET root=%~dp0
CD /D %root%

CLS
ECHO 1.Download Nadeko
ECHO 2.Run Nadeko
ECHO 3.Run Nadeko with Auto Restart

ECHO.
ECHO !MAKE SURE YOU'VE CREATED A BACKUP OF EVERYTHING ALREADY BEFORE UPDATING!
ECHO.

CHOICE /C 123 /M "Enter your choice:"

IF ERRORLEVEL 3 CALL Run_AR.bat
IF ERRORLEVEL 2 CALL Run.bat
IF ERRORLEVEL 1 CALL Download.bat