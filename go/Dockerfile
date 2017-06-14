FROM jetbrains/teamcity-minimal-agent:latest

MAINTAINER kyriakos.kentzoglanakis@gmail.com

COPY ./install_go.sh /
RUN chmod u+x /install_go.sh
RUN /install_go.sh

RUN apt-get update \
    && apt-get install -y gcc git \
    && rm -rf /var/lib/apt/lists/*

ENV GOROOT=/usr/local/go
ENV GOPATH=/home/buildagent
RUN echo "export PATH=/usr/local/go/bin:$PATH" >> /home/buildagent/.bashrc
