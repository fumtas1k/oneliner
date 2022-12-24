#!/bin/sh
#
# -r, -R: 再起的に読み込む
# -n: 行番号
# -l: 検索結果を表示せずにファイル名だけ出力

mkdir ./tmp
cd ./tmp
seq 10000 | sed 's/^/echo $RANDOM > /' | bash
grep -rl '^10$' | xargs -P8 rm
# seq 10000 | xargs -P8 grep '^10$' -l
# time rg -l '^10$' | xargs rm
