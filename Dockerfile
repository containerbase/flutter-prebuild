

FROM ghcr.io/containerbase/base:13.5.11@sha256:6b8932b3744c01425f4007a62e2e34f40d00e7804c9d44bba50d88fd50ea31a3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
