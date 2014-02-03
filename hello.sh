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

arrays=(1 2 "3" 4 five)
echo ${#arrays[@]}

# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}       #
COMMA2=`expr index "$CHOP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
echo $FIRSTNAME

STRING="to be or not to be"
echo ${STRING[@]/be/eat}        # to eat or not to be
############################################
echo

for i in 1 2 3 "hello" 5
do
  echo $i
done
