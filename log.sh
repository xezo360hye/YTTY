log() {
	if $DEBUG; then
		echo -e "\e[1m$(tput setaf $DEBUG_COLOR)\
[$(date +%T) ~ DEBUG] $@\e[0m" > /dev/tty
	fi
}