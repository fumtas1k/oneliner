#!/bin/sh

num=${1:-$(cat)}
echo $(($num*2))
