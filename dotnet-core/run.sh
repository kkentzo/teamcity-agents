#!/bin/sh

echo "Running container..."
docker container run -d \
       -v /data/teamcity-dotnet-core-agent/config:/data/teamcity_agent/conf \
       -e SERVER_URL=$TEAMCITY_HOST \
       -e AGENT_NAME="kk-dotnet-core-agent" \
       --name="teamcity-dotnet-core-agent" \
       teamcity-dotnet-core-agent
