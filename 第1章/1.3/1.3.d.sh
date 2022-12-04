#!/bin/sh
# 検索

seq 5 | awk '/[24]/' | xargs
seq 5 | awk '$1%2==0{print $1}' | xargs
seq 5 | awk '$1%2==0{printf("%d 偶数\n", $1)}'
seq 5 | awk '{print $1($1%2 ? " 奇数":" 偶数")}'
seq 5 | awk 'BEGIN{cnt=0}{print $1, ($1%2 ? "奇数":"偶数")}{cnt+=$1}END{print "合計", cnt}'
