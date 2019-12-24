FROM alpine:latest

LABEL "com.github.actions.name"="Hugo Actions"
LABEL "com.github.actions.description"="Commands to help with building Hugo based static sites"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="http://github.com/srt32/hugo-actions"
LABEL "homepage"="http://github.com/srt32/hugo-actions"

RUN apk add --no-cache  --repository=http://dl-cdn.alpinelinux.org/alpine/v3.10/community hugo=0.55.6-r0  bash

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
