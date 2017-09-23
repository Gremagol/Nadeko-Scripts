@ECHO off
TITLE Downloading NadekoBot...
SET "root=%~dp0"
CD /D "%root%"
ECHO Deleting NadekoBot Folder...
RMDIR "%root%NadekoBot\" /S /Q >nul 2>&1
ECHO Downloading Nadekobot...
git clone -b 1.8 https://github.com/Kwoth/NadekoBot
ECHO Nadekobot downloaded.
timeout /t 5
CALL NadekoBot.bat