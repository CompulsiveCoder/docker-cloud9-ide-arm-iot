# Credit and more info:
# https://hub.docker.com/r/hwegge2/rpi-cloud9-ide/

HOST_PORT="8181"
WORKSPACE_PATH="/home/$USER/workspace/"

# No authentication
#docker run --name cloud9-ide-arm-iot -it -d -p $HOST_PORT:8181 -v $WORKSPACE_PATH:/workspace cloud9-ide-arm-iot node server.js -w/workspace --listen 0.0.0.0 -a :

USERNAME="user"
PASWORD="pass1234"

# Authenticated by username and password
docker run --name cloud9-ide-arm-iot -it -d -p $HOST_PORT:8181 -v $WORKSPACE_PATH:/workspace cloud9-ide-arm-iot node server.js -w/workspace --listen 0.0.0.0 -a $USERNAME:$PASSWORD
