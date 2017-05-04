docker kill $(docker ps -q)
# Delete all containers
docker rm $(docker ps -a -q)

docker network rm computer-database-network


# Delete all images
docker rmi $(docker images -q)