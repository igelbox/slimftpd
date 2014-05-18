# SlimFTPd - small & simple FTP-server for Windows

There is a simple slimftpd.conf example, allows `anonymous` user to read contents of `c:\ftp` directory:
```
<User "anonymous">
	Mount / C:\ftp
	Allow / List Read
</User>
```

for more settings see [slimftpd.conf.example](slimftpd.conf.example) file

-
published under the liberal terms of the BSD License, see the [LICENSE](LICENSE.txt) file.
