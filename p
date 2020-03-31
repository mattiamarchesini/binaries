#!/bin/sh

store_dir="${HOME}/.password-store/"
selection=$(find "$store_dir" -name *.gpg | awk '{ gsub("^'"$store_dir"'",""); gsub(".gpg$",""); print }' | fzf)
if [ ! -z  "$selection" ]; then
	pass -c "$selection"
fi
