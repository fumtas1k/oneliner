#!/bin/sh
# ソート、ユニーク
# -k: 列を指定してのソート
# -n: 数字順のソート

seq 19 | awk '{print $1%2 ? "奇数":"偶数"}' | sort | uniq -c | awk '{print $2,$1}' | sort -k2,2n
seq 19 | awk '{print $1%2 ? "奇数":"偶数"}' | awk '{a[$1]++}END{for(k in a)print k, a[k]}'
