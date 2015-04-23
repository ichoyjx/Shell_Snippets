#!/usr/bin/env bash

TEMP='bin/runtest -suite hello -f "fast" -test abe bcd cde -copysrc'
#TEMP='bin/runtest -suite hello -f "fast"'

FILENAME=$1

if [[ $TEMP == *"-test"* ]]; then
    LEN=`echo "$TEMP" | awk '
{
  lenc=split($0, cmd, "-")
  for (i=1; i<=lenc; i++) {
    if (index(cmd[i], "test") == 1) {
      lens=split(cmd[i], teststr, " ")
    }
  }

  print lens
}'`
elif [[ $TEMP == *"-suite"* ]]; then
    LEN=0
else
    echo "NO SUITENAME"
    exit 1
fi

MAIN=`echo "$TEMP" | awk -v lens="$LEN" '
{
  pos = 0
  for (i=1; i<=NF; i++) {
    if ($i == "-test")
      pos = i
  }

  for (i=1; i<=NF; i++) {
    if (i<pos || i>=(pos+lens))
      printf("%s ", $i)
  }
}'`


if [[ $TEMP == *"-test"* ]]; then
    echo "$TEMP" | awk -v mainstr="$MAIN" '
{
  lenc=split($0, cmd, "-")
  for (i=1; i<=lenc; i++) {
    if (index(cmd[i], "test") == 1) {
      lens=split(cmd[i], teststr, " ")
    }
  }

  for (j=2; j<=lens; j++) {
    printf("%s", mainstr)
    printf("-test %s\n", teststr[j])
  }
  
}'
elif [[ $TEMP == *"-suite"* ]]; then
    awk -v mainstr="$MAIN" '
    {
      for (i=1; i<=NF; i++) {
        printf("%s", mainstr)
        printf("-test %s\n", $i)
      }
    }' "$FILENAME"
fi
