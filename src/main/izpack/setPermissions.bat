@if "%OS%" == "Windows_NT" setlocal

set DIRNAME=.\
if "%OS%" == "Windows_NT" set DIRNAME=%~dp0%

icacls "%DIRNAME%." /grant Users:F /T
rem > %APPDATA%\Nuxeo\log\installer-postinstall.log