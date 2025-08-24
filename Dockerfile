

FROM ghcr.io/containerbase/base:13.10.10@sha256:4389fcabea8aaa14b0d0a6c77d96c4bd63bff2c8014b1d3d8eb29c7194a36824


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
