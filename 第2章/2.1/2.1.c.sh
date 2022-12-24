#!/bin/sh
# 文字列の連結と置換
# 変数展開

a=私は
b=俳優よ
c=$a$b; echo $c

a+=$b; echo $a

b=${a:0:1}${a:2:2}; echo $b

c=${a/俳優/排骨麺}; echo $c
