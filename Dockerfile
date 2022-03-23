FROM node:16-bullseye-slim

WORKDIR /app

COPY requirements.txt ./

RUN apt-get update && \
    apt-get install -y awscli python3 python3-pip jq && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install -r requirements.txt && \
    rm requirements.txt && \
    yarn config set python /usr/bin/python3

ENTRYPOINT ["bash"]
