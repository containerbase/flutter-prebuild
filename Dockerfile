

FROM ghcr.io/containerbase/base:10.0.1@sha256:d24f4c68845feefe4887bc5f0ad77569f5107b048e55da1ea61282f8e6fd5ad0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
