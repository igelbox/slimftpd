@echo off

set DIST=dist
set NAME=SlimFTPd

> VERSION.txt awk -F\" "/ProductVersion/ {print $4}" src\SlimFTPd.rc
< VERSION.txt set /p VERSION=

if exist %DIST%\nul rmdir /s /q %DIST%
mkdir %DIST%\%NAME%
cd %DIST%
del /f /q %NAME%\*
copy /y ..\SlimFTPd.exe %NAME%
copy /y ..\LICENSE.txt %NAME%
copy /y ..\slimftpd.conf.example %NAME%
>  %NAME%\slimftpd.conf echo ^<User "anonymous"^>
>> %NAME%\slimftpd.conf echo ^    Mount / .
>> %NAME%\slimftpd.conf echo ^    Allow / List Read
>> %NAME%\slimftpd.conf echo ^</User^>
zip -r SlimFTPd-%VERSION%.zip %NAME%
pause
