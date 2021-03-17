#docker container kill syncthing
#docker rm syncthing
docker pull syncthing/syncthing
mkdir -p ~/sync/
docker run --restart unless-stopped --name syncthing -d --network=host -v ~/sync/:/var/syncthing -e STGUIADDRESS= syncthing/syncthing:latest