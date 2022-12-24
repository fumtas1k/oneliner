#!/bin/sh
# 検索

echo 中村 山田 田代 上田 | grep -o "[^ ]田" | xargs
echo abc | tr ac bq
