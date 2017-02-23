@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist F:\test\hypersonic\scripts\ctl.bat (start /MIN /B F:\test\server\hsql-sample-database\scripts\ctl.bat START)
if exist F:\test\ingres\scripts\ctl.bat (start /MIN /B F:\test\ingres\scripts\ctl.bat START)
if exist F:\test\mysql\scripts\ctl.bat (start /MIN /B F:\test\mysql\scripts\ctl.bat START)
if exist F:\test\postgresql\scripts\ctl.bat (start /MIN /B F:\test\postgresql\scripts\ctl.bat START)
if exist F:\test\apache\scripts\ctl.bat (start /MIN /B F:\test\apache\scripts\ctl.bat START)
if exist F:\test\openoffice\scripts\ctl.bat (start /MIN /B F:\test\openoffice\scripts\ctl.bat START)
if exist F:\test\apache-tomcat\scripts\ctl.bat (start /MIN /B F:\test\apache-tomcat\scripts\ctl.bat START)
if exist F:\test\resin\scripts\ctl.bat (start /MIN /B F:\test\resin\scripts\ctl.bat START)
if exist F:\test\jboss\scripts\ctl.bat (start /MIN /B F:\test\jboss\scripts\ctl.bat START)
if exist F:\test\jetty\scripts\ctl.bat (start /MIN /B F:\test\jetty\scripts\ctl.bat START)
if exist F:\test\subversion\scripts\ctl.bat (start /MIN /B F:\test\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist F:\test\lucene\scripts\ctl.bat (start /MIN /B F:\test\lucene\scripts\ctl.bat START)
if exist F:\test\third_application\scripts\ctl.bat (start /MIN /B F:\test\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist F:\test\third_application\scripts\ctl.bat (start /MIN /B F:\test\third_application\scripts\ctl.bat STOP)
if exist F:\test\lucene\scripts\ctl.bat (start /MIN /B F:\test\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist F:\test\subversion\scripts\ctl.bat (start /MIN /B F:\test\subversion\scripts\ctl.bat STOP)
if exist F:\test\jetty\scripts\ctl.bat (start /MIN /B F:\test\jetty\scripts\ctl.bat STOP)
if exist F:\test\hypersonic\scripts\ctl.bat (start /MIN /B F:\test\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist F:\test\jboss\scripts\ctl.bat (start /MIN /B F:\test\jboss\scripts\ctl.bat STOP)
if exist F:\test\resin\scripts\ctl.bat (start /MIN /B F:\test\resin\scripts\ctl.bat STOP)
if exist F:\test\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT F:\test\apache-tomcat\scripts\ctl.bat STOP)
if exist F:\test\openoffice\scripts\ctl.bat (start /MIN /B F:\test\openoffice\scripts\ctl.bat STOP)
if exist F:\test\apache\scripts\ctl.bat (start /MIN /B F:\test\apache\scripts\ctl.bat STOP)
if exist F:\test\ingres\scripts\ctl.bat (start /MIN /B F:\test\ingres\scripts\ctl.bat STOP)
if exist F:\test\mysql\scripts\ctl.bat (start /MIN /B F:\test\mysql\scripts\ctl.bat STOP)
if exist F:\test\postgresql\scripts\ctl.bat (start /MIN /B F:\test\postgresql\scripts\ctl.bat STOP)

:end

