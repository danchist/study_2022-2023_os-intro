#!/bin/bash

file="./.lock.file"
exec {fn}<>$file

while true
do
    if flock -n ${fn}; then
        echo "Ресурс используется"
        sleep 5
        flock -u ${fn}
        echo "Ресурс освободился"
        sleep 1
    else
        echo "Ожидание ресурса"
        sleep 8
    fi
done

