@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop


"F:\test\mysql\bin\mysqld" --defaults-file="F:\test\mysql\bin\my.ini" --standalone --console
if errorlevel 1 goto error
goto finish

:stop
"F:\test\apache\bin\pv" -f -k mysqld.exe -q

if not exist "F:\test\mysql\data\%computername%.pid" goto finish
echo Delete %computername%.pid ...
del "F:\test\mysql\data\%computername%.pid"
goto finish


:error
echo MySQL could not be started

:finish
exit
