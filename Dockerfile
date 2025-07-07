

FROM ghcr.io/containerbase/base:13.8.56@sha256:2932ef17af9c0841ae7c80c7d6f959f5f9266bd001c9ee751b7242a6fde257a2


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
