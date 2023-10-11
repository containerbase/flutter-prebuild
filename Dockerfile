

FROM ghcr.io/containerbase/base:9.20.12@sha256:c2a0548b8f6a7fa82ca08586b7298fe05b8be5badcd94096cb2d4f88961c40e5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
