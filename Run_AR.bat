@ECHO OFF
@TITLE NadekoBot
:autorun
ECHO Normal Auto Restart
ECHO Bot will not auto update on every restart!
timeout /t 3
CD /D "%~dp0NadekoBot\src\NadekoBot"
dotnet restore
dotnet run --configuration Release
goto autorun