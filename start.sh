#!/bin/bash

SELF=$( dirname "$0" )

source "$SELF/log.sh"

log "Logger imported, sourcing other modules" && {
	source "$SELF/config.sh"
	source "$SELF/search.sh"
	source "$SELF/download.sh"
	source "$SELF/player.sh"
	unset SELF
}

log "Importing done"

set -e
	log "Starting search"
	url=$( video.search "$@" )

	log "Downloading $url"
	file=$( video.download "$url" )

	log "Playing $file"
	video.play "$file"
set +e