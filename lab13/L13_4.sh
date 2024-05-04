#!/bin/bash

find . -type f -mtime -7 -print0 | tar -czvf arch.tar --null -T -
