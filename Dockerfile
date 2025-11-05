

FROM ghcr.io/containerbase/base:13.23.19@sha256:b54393c9a6841c22a50740dc082d9b5719491d23cfc9626a8d12978282e4f812


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
