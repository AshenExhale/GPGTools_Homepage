#!/bin/bash

open "$(dirname "$(find . -name "config.php" -print0 | xargs -0 ls -1 -t | head -n1)")/index.html"
