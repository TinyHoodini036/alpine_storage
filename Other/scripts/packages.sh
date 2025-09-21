#!/bin/sh

apk info | grep -ve '-doc$' | sort | while read pkg

do
    rdep=`apk info -qr "$pkg"`
    if [ -z "$rdep" ]; then
        echo "$pkg" >> installed_packages.txt
    fi
done

