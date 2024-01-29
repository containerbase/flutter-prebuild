

FROM ghcr.io/containerbase/base:9.31.6@sha256:f3327e9a65c946750217aad95c2e97c2fd3c730ed0920fa348e488343d0a5da3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
