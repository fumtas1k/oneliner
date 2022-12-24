#!/bin/sh
# 計算
echo '1+1' | bc
echo `expr 1 + 1`
echo $(expr 1 + 1)
echo '1+1' | sed 's/.*/echo $((&))/' | bash
echo '1+1' | sed 's/./& /g' | xargs expr
