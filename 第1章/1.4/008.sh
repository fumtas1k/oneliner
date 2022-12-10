#!/bin/sh

awk -F: '{print $(NF-2)}' qdata/8/access.log | awk '{print ($1 < 12 ? "午前" : "午後")}' | sort | uniq -c | awk '$2 $1'

# 以下はmac zshでは機能しない
# sed -E 's@.*\[|\]|/@@g' qdata/8/access.log | date -f- +%p
