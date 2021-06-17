FROM ubuntu:20.04

ENV PATH "$PATH:/bin/bash"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y git apt-transport-https ca-certificates curl gnupg-agent software-properties-common lsb-release
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io
COPY script.sh /script.sh
RUN chmod u+x script.sh

VOLUME ["/var/run/docker.sock"]

CMD ["/bin/bash"]
