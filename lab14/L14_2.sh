#!/bin/bash

com=$1

if test -f "/usr/share/man/man1/$com.1.gz"
    then less /usr/share/man/man1/$com.1.gz
else
    echo "Такой справки нету :("

fi
