@echo off

> VERSION.txt awk -F\" "/ProductVersion/ {print $4}" src\SlimFTPd.rc
< VERSION.txt set /p VERSION=

if exist dist\nul rmdir /s /q dist
mkdir dist\SlimFTPd
cd dist
del /f /q SlimFTPd\*
copy /y ..\SlimFTPd.exe SlimFTPd\
copy /y ..\LICENSE.txt SlimFTPd\
copy /y ..\slimftpd.conf.example SlimFTPd\
>  SlimFTPd\slimftpd.conf echo ^<User "anonymous"^>
>> SlimFTPd\slimftpd.conf echo ^    Mount / .
>> SlimFTPd\slimftpd.conf echo ^    Allow / List Read
>> SlimFTPd\slimftpd.conf echo ^</User^>
zip -r SlimFTPd-%VERSION%.zip SlimFTPd
pause
