

FROM ghcr.io/containerbase/base:13.24.0@sha256:92a9bc4a65e23c0ad813a651138f4b4610daa8bddd25767c71877262f60ec7b4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
