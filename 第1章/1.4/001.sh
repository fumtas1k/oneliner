#!/bin/sh
# exeファイルの抽出

grep "\.exe$" qdata/1/files.txt
cat qdata/1/files.txt | sed -n '/\.exe$/p'
cat qdata/1/files.txt | awk '/\.exe$/'
