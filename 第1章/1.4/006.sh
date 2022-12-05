#!/bin/sh
# 端末に模様を描く

seq 5 | awk '{for(i=0;i<5-$1;i++){printf " "};{print "x"}}'
