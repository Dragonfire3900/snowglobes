#!/bin/bash

#This assumes that we are currently in the snowglobes directory

if [ -z "$SNOWGLOBES" ]; then
    echo "

#Set the Snowglobes directory
export SNOWGLOBES=\"${PWD}\"" >> ~/.bashrc
fi

if [ -z "$GLB_DIR" ]; then
    if [ -z "$1" ]; then
        echo "Please run this setup script again with where Globes is located"
    else
        echo "
#Set the Globes directory for snowglobes
export GLB_DIR=\"${1}\"" >> ~/.bashrc
    fi
fi

if !([ -z "$SNOWGLOBES" ] && [ -z "$GLB_DIR" ]); then
    cd ./src;
    make;
    make install;
fi