#!/bin/sh
# 条件分岐
# []の中は、1スペースずつ必要

if grep -e '[02468]$' <<< $1; then echo 偶数; elif grep -e '[13579]$' <<< $1; then echo 奇数; else echo その他; fi
echo $1 | awk '/[0-9]$/{print $1%2 ? "奇数" : "偶数"; exit}{print "その他"}'
bash -c "grep '[02468]' <<< $1 && echo 偶数" || bash -c "grep '[13579]' <<< $1 && echo 奇数" || echo その他

[ 10 -gt $1 ]; echo $?
b="Yes we can!"
[ "$b" = "No we cannot!" ]; echo $?
[ -e /etc/passwd ]; echo $?
