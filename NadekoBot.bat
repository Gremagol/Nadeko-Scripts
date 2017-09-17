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

IF ERRORLEVEL 3 GOTO run_ar
IF ERRORLEVEL 2 GOTO run
IF ERRORLEVEL 1 GOTO download

:download
ECHO Make sure you are running it on Windows 8 or later.
timeout /t 10
TITLE Downloading File, please wait...
SET "FILENAME=%~dp0\Download.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/Gremagol/Nadeko-Scripts/master/Download.bat -OutFile '%FILENAME%'"
ECHO File downloaded, starting. . .
timeout /t 5
CALL Download.bat
GOTO End

:run
TITLE Downloading File, please wait...
SET "FILENAME=%~dp0\Run.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/Gremagol/Nadeko-Scripts/master/Run.bat -OutFile '%FILENAME%'"
ECHO.
ECHO Running Nadeko Normally, "if" you are running this to check Nadeko, use ".die" command on discord to stop Nadeko.
timeout /t 10
CALL Run.bat
GOTO End

:run_ar
TITLE Downloading File, please wait...
SET "FILENAME=%~dp0\Run_AR.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/Gremagol/Nadeko-Scripts/master/Run_AR.bat -OutFile '%FILENAME%'"
ECHO.
ECHO Running Nadeko with Auto Restart, you will have to close the session to stop the auto restart.
timeout /t 15
CALL Run_AR.bat
GOTO End

:End
cls
CALL NadekoBot.bat