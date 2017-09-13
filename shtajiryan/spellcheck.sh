#!/bin/bash

# dictionary=$(cat /usr/share/dict/words)
# cat $1 | fmt -1 | tr A-Z a-z | sort | sed 's/[,.:;]//' | uniq | comm -23 - $dictionary

# to be able to use the "words" file as a dictionary, I would have to either
# recompile my kernel removing the limit on allowed arguments, or I would have to use
# find or xargs, which is no fun. If by any chance you have MAX_ARG_PAGES or ARGMAX
# tweaked in your kernel, you can try to run the script.

cat $1 | fmt -1 | tr A-Z a-z | sort | sed 's/[,.:;]//' | uniq | comm -23 - dictionary