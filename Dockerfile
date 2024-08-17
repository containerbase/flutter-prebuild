

FROM ghcr.io/containerbase/base:11.11.1@sha256:a69d3c4c641a967d0fc4bd96a7844ec5c232a86235ac6b2116d83ff7b8224056


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
