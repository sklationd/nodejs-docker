SERVER_NAME="server"

# Stop/Remove pre-built container
echo "Stop Container"
docker stop $SERVER_NAME
echo "Removing Server Container"
docker rm $SERVER_NAME

# After you change dockerfile, you should change VERSION to appropriate constant
# If not, docker will use pre-built docker image
# HOST_PORT will be linked with CONTAINER_PORT
VERSION=v202007220
HOST_PORT=40000
CONTAINER_PORT=8080

# If there is a pre-built image, reuse it
if [ ! -z $(docker images -q $SERVER_NAME:$VERSION) ]; then
	echo "Dockerfile has already been built"
else
	echo "Building server image"
	docker build --tag=$SERVER_NAME:$VERSION .
fi

# -p : link HOST_PORT with CONTAINER_PORT
docker run -it -p $HOST_PORT:$CONTAINER_PORT --name $SERVER_NAME $SERVER_NAME:$VERSION

echo "Done"
