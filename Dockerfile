

FROM ghcr.io/containerbase/base:10.6.1@sha256:9f302797b4cce825693829d5c3435ffee9fc340e4e3356ff82347c476d039732


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
