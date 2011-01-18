#!/bin/bash
file=`ls -t *.php|head -n1`;
file=`basename -s .php $file`;
open $file.html

