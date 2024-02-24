# Dockerfile

# Script       : CamHacker
# Author       : laughies
# Github       : https://github.com/laughies
# Messenger    : https://m.me/laughies
# Email        : appigowda7338@gmail.com
# Date         : 25/02/2024
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/laughies/CamHacker"

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

## "sudo docker build . -t kasroudra/camhacker:latest", "sudo docker run --rm -it kasroudra/pyphisher:latest"

## "sudo docker pull kasroudra/camhacker", "sudo docker run --rm -it kasroudra/camhacker"
