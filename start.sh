#!/bin/bash

SELF=$( dirname "$BASH_SOURCE" )

source "$SELF/log.sh"
source "$SELF/config.sh"

source "$SELF/search.sh"
source "$SELF/play.sh"

while [[ -n "$1" ]]; do
	str=$(tr '[:lower:]' '[:upper:]' <<< "$1")
	case "$1" in
	--)
		shift
		break;;
	-*)
		declare ${str:1}="$2"
		shift 2;;
	*)
		break;;
	esac
done

log "Importing and parsing arguments done"

if [[ -z "$URL" ]]; then
	log "Starting search"
	URL=$( video.search "$@" )
fi

log "Downloading and playing $URL"
video.start "$URL"