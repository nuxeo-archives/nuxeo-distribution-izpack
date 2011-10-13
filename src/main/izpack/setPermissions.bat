@if "%OS%" == "Windows_NT" setlocal

set DIRNAME=.\
if "%OS%" == "Windows_NT" set DIRNAME=%~dp0%

icacls "%DIRNAME%." /grant *S-1-5-32-545:F /T
rem > %APPDATA%\Nuxeo\log\installer-postinstall.log
