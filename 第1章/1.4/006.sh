#!/bin/sh
# 端末に模様を描く

seq 5 -1 1 | awk '{for(i=0;i<$1;i++){printf " "};{print "x"}}'
printf "%*s\n" 5 x 4 x 3 x 2 x 1 x
seq 5 -1 1 | awk '{print $1 " x"}' | xargs printf '%*s\n'
seq 5 -1 1 | awk '{print 10^$1"x"}' | tr -d 1 | tr 0 ' '
