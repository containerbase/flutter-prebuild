

FROM ghcr.io/containerbase/base:14.10.18@sha256:05d99a4740248c7248ee250d37c0df151443b27e59bcb8e715bce78adbb1d6b8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
