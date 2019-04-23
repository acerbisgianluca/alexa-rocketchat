FROM node:10-stretch

LABEL "com.github.actions.name"="Deploy"
LABEL "com.github.actions.description"="Deploy /lambda/custom to AWS Lambda"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="blue"

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        zip python3 python3-dev jq python3-pip python3-setuptools groff less && \
	apt-get clean -y && \
rm -rf /var/lib/apt/lists/*

RUN pip3 --no-cache-dir install --upgrade awscli

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
