

FROM ghcr.io/containerbase/base:13.8.21@sha256:87983746e27b482fd24cbe759f86314d1895e910a6d33e78b8ca319dbbd67c04


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
