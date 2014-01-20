#!/bin/bash
echo
############################################
ps | grep $$

which bash

echo 'O hai, world!'

greeting='Hello     world!'
echo $greeting now with spaces: "$greeting"

BIRTHDATE="Jan 1 2000"
Presents=10
BIRTHDAY=`date -d "$BIRTHDATE" +%A`

echo $BIRTHDAY
############################################
echo