#!/bin/sh
# 変数の読み込み

if [ "$1" = "" ];then
  read num
else
  num="$1"
fi

echo $((num*2))
