#!/bin/sh
# 変数の読み込み

[ "$1" = "" ] && read num || num="$1"
echo $((num*2))
