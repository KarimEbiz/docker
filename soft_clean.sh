docker kill $(docker ps -q)
# Delete all containers
docker rm $(docker ps -a -q)
