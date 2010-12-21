#!/bin/sh

if [ "$1" == "" ]; then
  echo "Usage: $0 <url>";
  exit 1;
fi

curl -O -L $1
gpg --detach-sign -a -u 76D78F0500D026C4 `basename $1`
