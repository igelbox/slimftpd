@echo off

set DIST=dist
set NAME=SlimFTPd

for /f "tokens=3" %%a in ('findstr ProductVersion src\SlimFTPd.rc') do (set VERSION=%%a)
set VERSION=%VERSION:"=%

if exist %DIST%\nul rmdir /s /q %DIST%
mkdir %DIST%\%NAME%
cd %DIST%
copy /y ..\SlimFTPd.exe %NAME%
copy /y ..\LICENSE.txt %NAME%
copy /y ..\slimftpd.conf.example %NAME%
>  %NAME%\slimftpd.conf echo ^<User "anonymous"^>
>> %NAME%\slimftpd.conf echo ^    Mount / .
>> %NAME%\slimftpd.conf echo ^    Allow / List Read
>> %NAME%\slimftpd.conf echo ^</User^>
zip -r SlimFTPd-%VERSION%-SNAPSHOT.zip %NAME%
pause
