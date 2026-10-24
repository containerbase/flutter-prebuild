

FROM ghcr.io/containerbase/base:14.52.4@sha256:778947b28ff0fccecc202b5ca6dbac0a95c3bde6bc9a4e915e6ef5f7d7fa9d0c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
