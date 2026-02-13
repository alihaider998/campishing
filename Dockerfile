# Dockerfile

# Script       : CamHacker
# Author   : alihaider998
# Github   : https://github.com/alihaider998
# Email    : info@blackproxy.com
# Messenger: https//m.me/alihaider998
# Date     : 7-12-2024
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/alihaider998/CamHacker"

# Working directory
WORKDIR /CamHacker/
# Add files 
ADD . /CamHacker

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./ch.sh", "--no-update"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t alihaider998/camhacker:latest", "sudo docker run --rm -it alihaider998/pyphisher:latest"

## "sudo docker pull alihaider998/camhacker", "sudo docker run --rm -it alihaider998/camhacker"
