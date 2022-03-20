#!/bin/bash

video.download() {
	log "Changing working directory to temporary dir" && {
		[[ "$1" = "" ]] && error 2 "URL must not be empty"
		local tmp=$(mktemp -dp .)
		cd "$tmp"
	}

	log "Downloading video" && {
		youtube-dl -o "$FORMAT" "$1" 1> /dev/tty #2> /dev/null
		local ret=$?
	}

	log "Finished, cleaning" && {
		file="$( ls )"
		mv "$file" ..
		cd ..
		rm -rf "$tmp"

		echo "$file"
		return $ret
	}
}