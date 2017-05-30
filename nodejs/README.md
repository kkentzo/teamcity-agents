# A teamcity agent for nodejs applications

## Description

The resulting container is a linux instance that serves as a Teamcity
agent for nodejs applications.

## Instructions

Build the image using:

    $ docker build . -t teamcity-nodejs-agent

Run the agent using the script `run.sh`

If necessary, a connection to the running container can be established
  as follows:

    $ docker container exec -it teamcity-nodejs-agent /bin/bash
    $ su buildagent

Once ran, the container can be start/stopped by using the appropriate
  docker commands:

    $ docker container [start|stop] teamcity-nodejs-agent
