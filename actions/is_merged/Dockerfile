FROM alpine:latest

LABEL "com.github.actions.name"="Is PR Merged?"
LABEL "com.github.actions.description"="Check if a PR is merged"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="red"

RUN	apk add --no-cache \
	bash \
	jq

ADD entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
