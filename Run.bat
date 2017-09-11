@ECHO off
@TITLE NadekoBot
timeout /t 5
CD /D "%~dp0NadekoBot\src\NadekoBot"
dotnet restore
dotnet run -c Release
ECHO NadekoBot has been succesfully stopped, press any key to close this window.
TITLE NadekoBot - Stopped
CD /D "%~dp0"
PAUSE >nul 2>&1
CALL NadekoBot.bat
