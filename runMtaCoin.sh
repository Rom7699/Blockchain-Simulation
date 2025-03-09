#!/bin/bash

# Pull the images from Docker Hub
sudo docker pull rom7699/mtacoin:server
sudo docker pull rom7699/mtacoin:miner

# Run the server container
sudo docker run -d -v /tmp/mtacoin:/usr/src/mnt/mta rom7699/mtacoin:server

# Run 3 miner containers
for i in {1..3}
do
sudo docker run -d -v /tmp/mtacoin:/usr/src/mnt/mta rom7699/mtacoin:miner
done