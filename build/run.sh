#!/bin/bash
file=`ls -t *.php.conf|head -n1`;
file=`basename -s .php.conf $file`;
open $file.html

