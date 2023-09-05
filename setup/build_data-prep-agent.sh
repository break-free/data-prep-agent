#!/bin/bash

# Check that OpenAI API Key is passed as an argument.
if [ $# -ne 1 ] 
  then
    echo "This script requires one argument: <OPENAI_API_KEY>. A key can be "
    echo "obtained from the OpenAI website, https://openai.com/"
    exit 1
fi

NAME=data-prep-agent
RUN="toolbox run --container $NAME"
APPLICATIONS="gcc-c++ python3-pip python3-devel"

# Create container
toolbox rm --force $NAME || true
toolbox create --container $NAME

## Install applications
$RUN sudo dnf install -y $APPLICATIONS;

## Install Python packages
$RUN pip install --upgrade -r setup/requirements.txt

## Add API secrets to profile.d directory
$RUN sudo bash -c 'echo -e "\
export OPENAI_API_KEY='$1' "\
> /etc/profile.d/api_secrets.sh'

