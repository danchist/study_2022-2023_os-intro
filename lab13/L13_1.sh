#!/bin/bash

while getopts ":i:o:p:Cn" opt;
do
    case ${opt} in
        i ) iinputfile=$OPTARG;;
        o ) ooutputfile=$OPTARG;;
        p ) pattern=$OPTARG;;
        C ) case_sens="-i";;
        n ) s_num="-n";;
        * ) echo "weird operation" exit 1;;
    esac
done

grep $case_sens $s_num "$pattern" "$iinputfile" > "$ooutputfile"
