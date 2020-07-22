# 🐋 Dockerization of NodeJS / 🏃 Efficient Development Process with Scripts

## `run.sh`
0. Before run this shell script, you can change the port number and name of the docker image in this script.
1. Stops/Removes container already exists.
2. Check version of current dockerfile(You have to manually set the version in `run.sh`). If this version has already been built docker just run the image. If not docker build the dockerfile.
3. It opens `/bin/bash` of container.
4. Have fun!

## `prune.sh`
Docker sometimes makes dangling images. `prune.sh` removes it for you.

## Demo
```bash
$ ./run.sh
(docker)$ node server.js

# Type localhost:4000 in your browser

# Terminate container with Ctrl+D

# Make a small change in Dockerfile and modify VERSION in run.sh to appropriate one

$ ./run.sh
(docker)$ 

# Your modification in Dockerfile is now applied

# When you change the server related source code, you don't need to modify VERSION, You can apply your modification by just re-launching ./run.sh
```
