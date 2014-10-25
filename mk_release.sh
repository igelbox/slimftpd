#!/bin/bash

VERSION=3-SNAPSHOT

mkdir -p dist/SlimFTPd
cd dist
rm -f SlimFTPd/*
cp ../SlimFTPd.exe SlimFTPd/
cp ../LICENSE.txt SlimFTPd/
cp ../slimftpd.conf.example SlimFTPd/
echo '<User "anonymous">
    Mount / .
    Allow / List Read
</User>
' > SlimFTPd/slimftpd.conf
zip -r SlimFTPd-$VERSION.zip SlimFTPd
