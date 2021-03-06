# Teamcity agent for Go applications

## Description

The resulting container is a linux instance that serves as a Teamcity
agent for Go applications.

## Instructions

Build the image using:

    $ docker build . -t teamcity-go-agent

Run the agent using the script `run.sh`

If necessary, a connection to the running container can be established
  as follows:

    $ docker container exec -it teamcity-go-agent /bin/bash
    # su buildagent

Once ran, the container can be start/stopped by using the appropriate
  docker commands:

    $ docker container [start|stop] teamcity-go-agent
