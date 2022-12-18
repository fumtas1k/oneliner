#!/bin/sh
# 議事録の整理
# 置換
# xargsによる横並び

cat qdata/11/gijiroku.txt | xargs -n2 | sed 's/^すず/鈴木/;s/^さと/佐藤/;s/やま/山田/' | sed -E 's/ /:/;s/$/\n/'
