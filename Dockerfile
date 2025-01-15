

FROM ghcr.io/containerbase/base:13.5.10@sha256:20b2d69890a08b6587373db4cc17d513322118bdf7961b96b946dfb55bdfc06f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
