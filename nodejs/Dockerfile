FROM jetbrains/teamcity-minimal-agent:latest

MAINTAINER kyriakos.kentzoglanakis@gmail.com

COPY ./setup_6.x.sh /
RUN chmod u+x /setup_6.x.sh
RUN /setup_6.x.sh \
    && apt-get -y install nodejs \
    && rm -rf /var/lib/apt/lists/*
