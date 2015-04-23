#!/usr/bin/env bash

TEMP="bin/runtest -suite hello -f fast -test abe bcd cde"
TEMP2="bin/runtest -suite hello -f fast"

echo "$TEMP" | awk '
{
  lenc=split($0, cmd, "-")
  for (i=1; i<=lenc; i++) {
    if (index(cmd[i], "test") == 1) {
      lens=split(cmd[i], teststr, " ")
    }
  }

  for (i=1; i<=NF; i++) {
    if ($i == "-test")
      pos = i
  }

  for (j=2; j<=lens; j++) {
    for (i=1; i<=NF; i++) {
      if (i<pos || i>=(pos+lens))
        printf("%s ", $i)
    }

    printf("-test %s\n", teststr[j])
  }
  
}'

