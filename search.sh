#!/bin/bash

video.search() {
	log "Count: $COUNT, request: $@" && {
		[[ "$@" = "" ]] && error 1 "Request must not be empty"
	}

	log "Starting search" && {
		results=$( youtube-dl -j "ytsearch$COUNT:$@" )
		mapfile -t titles < <( jq '.fulltitle' <<< "$results" | tr -d '"' )
		mapfile -t urls < <( jq '.webpage_url' <<< "$results" | tr -d '"' ) 
	}

	log "Found ${#urls[@]} videos ready to download" && {
		PS3="Select video to watch: "
		select video in "${titles[@]}"; do
			echo "${urls[
					$(( $REPLY - 1 ))
				]}"
			return
		done
	}
}