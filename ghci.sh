#!/bin/bash
#docker pull haskell:8.6.3

if [ "$1" = "" ]; then
    echo "Running docker with no shared volume."
    docker run -it -w /home/code --rm haskell:8.6.3
fi

if [ "$1" != "" ]; then
    echo "Running docker with shared volume $1."
    docker run -it -v "$1":/home/code -w /home/code --rm haskell:8.6.3
fi