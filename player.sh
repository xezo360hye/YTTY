#!/bin/bash

video.play() {
	[[ ! -f "$1" ]] && error 1 "File not found"
	log "Playing in size X=$SIZE" && {
		mplayer -vo fbdev2 -zoom -xy "$SIZE" "$1" # -slave for coproc
	}
}