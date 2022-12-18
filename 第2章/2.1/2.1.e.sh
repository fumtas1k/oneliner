#!/bin/sh
# クォートと変数
# 変数が空文字の時無視されるため、変数はなるべくダブルクォートで囲った方がいい

p=pen
re=""

echo $p "$p" '$p'
echo "This is $p." 'That is a $p.'
echo "This is a ${p}cil." That is a "$p"cil. "That was a $pcil"
grep "$re" /etc/passwd
grep $re /etc/passwd
