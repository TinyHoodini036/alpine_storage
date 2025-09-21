#!/bin/sh

echo Package Name:
read pkg

apk list -I | grep $pkg
