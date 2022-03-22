video.start() {
	# If not in TTY do not use framebuffer
	if ! xhost > /dev/null 2>&1; then
		local vo="-vo fbdev2"
	fi

	# To save file
	if [[ "$FORMAT" != '' ]]; then
		local out=$(youtube-dl --get-filename -o "$FORMAT" "$1")
		log "Duplicating to file $out"
	fi

	# youtube-dl is running in background and the video goes to stdout instead of some file; tee command duplicates it so it's saved in file $out and also it goes to stdin, but actually in /dev/fd/63 (because of <() construct); mplayer plays this pseudo file
	mplayer -cache "$CACHE" $vo -zoom -xy "$SIZE" <(youtube-dl -o - "$1" 2> /dev/null | tee "$out")
}