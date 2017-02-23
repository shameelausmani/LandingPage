@echo off

if not ""%1"" == ""START"" goto stop

cmd.exe /C start /B /MIN "" "F:\test\apache\bin\httpd.exe"

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:stop
"F:\test\apache\bin\pv" -f -k httpd.exe -q
if not exist "F:\test\apache\logs\httpd.pid" GOTO finish
del "F:\test\apache\logs\httpd.pid"
goto finish

:error
echo Error starting Apache

:finish
exit
