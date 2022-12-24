#!/bin/zsh
# Bashの配列と連想配列

# 空文字かもしれないのでクォートで囲う
a=("$SHELL" "$LANG" "$USER")

declare -A b
b["SHELL"]="$SHELL"
b["LANG"]="$LANG"
b["USER"]="$USER"

# shellによりstartが0ではない？
echo ${a[2]}
echo ${b["LANG"]}

echo '---'

echo ${a[*]}
echo ${b[*]}

echo '---'

echo ${#a[*]}
echo ${#b[*]}

echo '---'

# echo ${!b[@]}
