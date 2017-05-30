FROM jetbrains/teamcity-minimal-agent:latest

MAINTAINER kyriakos.kentzoglanakis@gmail.com

RUN apt-get install apt-transport-https \
    && echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893 \
    && apt-get update \
    && apt-get install -y --no-install-recommends dotnet-dev-1.0.3 \
    && rm -rf /var/lib/apt/lists/*

# Trigger the population of the local package cache
ENV NUGET_XMLDOC_MODE skip
RUN mkdir warmup \
    && cd warmup \
    && dotnet new \
    && cd .. \
    && rm -rf warmup \
    && rm -rf /tmp/NuGetScratch
