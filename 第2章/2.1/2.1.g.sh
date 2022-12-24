#!/bin/sh
# 繰り返しと終了ステータス

set aa bb cc
seq 3 | while read x; do printf '%s ' $x; done; echo

for x in $@; do echo $x; done
for x in "$@"; do echo $x; done
for x in $*; do echo $x; done
for x in "$*"; do echo $x; done
