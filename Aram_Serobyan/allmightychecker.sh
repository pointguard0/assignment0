#!/bin/bash
cat $1 | fmt -1 | tr A-Z a-z | sort | sed 's/[,.:;]//' | uniq | comm -23 - dictionary
