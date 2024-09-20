

FROM ghcr.io/containerbase/base:11.11.20@sha256:d31ebdb612ba9b91520438de31303d3c5c750be3990e4fdf97e46325012c3719


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
