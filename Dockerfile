ARG QUORUM_VERSION=latest

FROM quorumengineering/quorum:${QUORUM_VERSION}

RUN apk add --no-cache curl

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh

RUN mkdir -p /data /var/log/quorum

ENTRYPOINT ["docker-entrypoint.sh"]