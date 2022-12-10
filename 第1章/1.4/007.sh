#!/bin/sh
# 税金計算と合計
# brew install num-utils # numsumのインストール

cat qdata/7/kakeibo.txt | awk '{tax=($1 < "20191001" || $2~/^\*/ ? 1.08 : 1.1);print $0, tax}' | awk '{print int($3*$4)}' | numsum
