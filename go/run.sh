#!/bin/sh

echo "Running container..."
docker container run -d \
       -v /data/teamcity-go-agent/config:/data/teamcity_agent/conf \
       -e SERVER_URL=$TEAMCITY_HOST \
       -e AGENT_NAME="kk-go-agent" \
       --name="teamcity-go-agent" \
       teamcity-go-agent
