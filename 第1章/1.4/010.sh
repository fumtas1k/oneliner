#!/bin/sh
# 見出し記法の変換
# 置換
# pandoc インストール

cat qdata/10/headings.md | sed -E 's/^## (.*)/\1\n---/g;s/^# (.*)/\1\n===/g'
# pandoc qdata/10/headings.md -f markdown+hard_line_breaks -t markdown+hard_line_breaks
