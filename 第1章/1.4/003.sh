#!/bin/sh
# ファイル作成
# -U: ソート省略

mkdir ./tmp
cd ./tmp
seq 100 | xargs -P8 touch
ls -U | xargs -P8 rename 's/^/0000/;s/0*([0-9]{4})/$1/'
