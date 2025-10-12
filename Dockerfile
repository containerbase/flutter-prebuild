

FROM ghcr.io/containerbase/base:13.20.2@sha256:bb8a3dc2b1b64ef81c43ae60b321091b51f36a93d88ab4cedefd8eedf998c9d5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
