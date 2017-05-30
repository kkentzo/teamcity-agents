#!/bin/sh

echo "Running container..."
docker container run -d \
       -v /data/teamcity-nodejs-agent/config:/data/teamcity_agent/conf \
       -e SERVER_URL=$TEAMCITY_HOST \
       -e AGENT_NAME="kk-nodejs-agent" \
       --name="teamcity-nodejs-agent" \
       teamcity-nodejs-agent
