
TAG="unknown"

log_init() {
	TAG=$1
}

log() {
	logger -t $TAG -p daemon.$1 $2
}

