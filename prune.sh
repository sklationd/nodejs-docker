# This shell script removes unnecessary(usally <none>) containers and images

docker container prune -f
docker image prune -f
