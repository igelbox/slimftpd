@echo off
set VERSION=3-SNAPSHOT
mkdir dist\SlimFTPd
cd dist
del /f /q SlimFTPd\*
copy /y ..\SlimFTPd.exe SlimFTPd\
copy /y ..\LICENSE.txt SlimFTPd\
copy /y ..\slimftpd.conf.example SlimFTPd\
echo ^<User "anonymous"^>>SlimFTPd\slimftpd.conf
echo ^    Mount / .>>SlimFTPd\slimftpd.conf
echo ^    Allow / List Read>>SlimFTPd\slimftpd.conf
echo ^</User^>>>SlimFTPd\slimftpd.conf
zip -r SlimFTPd-%VERSION%.zip SlimFTPd
pause