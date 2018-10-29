
# Docker clean script
# Remove images that aren't being used
docker rm -v $(docker ps -a -q -f status=exited)
docker rmi $(docker images -f "dangling=true" -q)
