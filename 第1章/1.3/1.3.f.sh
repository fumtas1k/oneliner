#!/bin/sh
# xargs
# フォルダ操作

seq 4 | xargs mkdir
seq 4 | xargs rmdir
mkdir 1 3
seq 4 | xargs -n2 mv
seq 4 | xargs -I@ mkdir dir_@
seq 4 | awk 'BEGIN{filename="dir_"}{printf "%s%02d\n", filename, $1}' | xargs mkdir
seq 4 | awk '{print "mkdir "($1%2 ? "odd_" : "even_")$1}' | zsh
