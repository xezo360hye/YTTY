#!/bin/bash

declare -ir LOG_COLOR=123
[[ -z "$DEBUG" ]] && DEBUG=false

log() {

	if $DEBUG; then
		echo -e "\
\e[1m$(tput setaf $LOG_COLOR)\
[$(date +%T) ~ DEBUG] \
$@\e[0m" > /dev/tty
	fi
}


error() {
	echo "[Error] ${@:1}" 1>&2
	exit $1
}