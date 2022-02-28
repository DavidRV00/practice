#!/bin/sh

# Run this script by sourcing it: . ./init.sh py

domain="$(xsel -b | awk -F'/' '{print $3}')"
if [[ $domain != "leetcode.com" ]]; then
	echo "domain is \"$domain\"; wanted \"leetcode.com\""
else
	prob="$(xsel -b | awk -F'/' '{print $5}')"
	mkdir -p "$prob"
	cd "$prob"
	nvim "main.$1" +"nnoremap YY ggyG<c-o>"
	cd -
	clear
	ls
fi
