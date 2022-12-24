#!/bin/sh
# 画像ファイルのフォーマット変換
# -I: 置換文字列を指定
# -P: 並列処理

time ls qdata/2/img/*.png | sed 's/\.png$//' | xargs -P8 -I@ convert @.png @.jpg
# time mogrify -format jpg qdata/2/img/*.png
