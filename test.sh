#!/usr/bin/env bash

while getopts "b:e:s:" arg
do
        case $arg in
             b)
                echo "$OPTARG"
                ;;
             e)
                echo "$OPTARG"
                ;;
             s)
                echo "$OPTARG"
                ;;
             ?)
            echo "ERROR"
        exit 1
        ;;
        esac
done
