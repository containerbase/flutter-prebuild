

FROM ghcr.io/containerbase/base:10.8.0@sha256:d4f59337015b5720b3700eb8c3b7c7a4e709fb6f1f39d6809847341ea32a3333


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
