source setenv.sh

echo ${cyn}Removing $CONTAINER_NAME container ...${end}
docker rm -f $CONTAINER_NAME
echo ${cyn}Container removed${end}
echo
echo ${cyn}Running $CONTAINER_NAME container ...${end}
docker run -it -p 8082:8082 --name $CONTAINER_NAME -v $PWD/app/config:/config $DOCKER_HUB_ID/$CONTAINER_IMAGE_NAME:$CONTAINER_IMAGE_VERSION