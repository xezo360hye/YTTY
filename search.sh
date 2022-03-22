video.search() {
	request="ytsearch$COUNT:$@"

	log "Starting search '$request'"

	results=$( youtube-dl -j "$request" )
	mapfile -t titles < <( jq '.fulltitle' <<< "$results" | tr -d '"' )
	mapfile -t urls < <( jq '.webpage_url' <<< "$results" | tr -d '"' ) 

	log "Found ${#urls[@]} videos ready to download"

	PS3="Select video to watch: "
	select video in "${titles[@]}"; do
		echo "${urls[$(( $REPLY - 1 ))]}"
		return
	done
}