

FROM ghcr.io/containerbase/base:10.11.4@sha256:5276e3fd11f75d8102b2c375a45586c0fd3fcd4be946b9b03464eb38efdb2f91


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
