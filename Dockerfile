

FROM ghcr.io/containerbase/base:14.20.2@sha256:6c9e427202975b565ea50f450b66c74ddbef0d2952b7b8dfa6b9b0dacf622215


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
