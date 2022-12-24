#!/bin/sh
# 条件分岐

a=0
if grep '[02468]$' <<< $a; then echo 偶数; elif grep '[13579]$' <<< $a; then echo 奇数; else echo その他; fi
echo $a | awk '/[0-9]$/{print $1%2 ? "奇数" : "偶数"; exit}{print "その他"}'
bash -c "grep '[02468]' <<< $a && echo 偶数" || bash -c "grep '[13579]' <<< $a && echo 奇数" || echo その他

test 10 -gt "$a"
echo $?
b="Yes we can!"
test "$b" = "No we cannot!"
echo $?
test -e /etc/passwd; echo $?
