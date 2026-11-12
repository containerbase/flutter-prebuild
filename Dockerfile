

FROM ghcr.io/containerbase/base:14.66.17@sha256:e1a9ffc20ff2599ce60402010eb131058812fb60bca5f150eacca1f66a6bea81


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
