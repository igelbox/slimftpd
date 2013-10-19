#!/bin/bash

VERSION=3-SNAPSHOT

mkdir -p dist/SlimFTPd
cd dist
rm -f SlimFTPd/*
cp ../SlimFTPd.exe SlimFTPd/
cp ../LICENSE.txt SlimFTPd/
cp ../slimftpd.conf.example SlimFTPd/
zip -r SlimFTPd-$VERSION.zip SlimFTPd
