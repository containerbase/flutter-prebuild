

FROM ghcr.io/containerbase/base:13.23.1@sha256:95acc0e26a1ee6e339455971ebf37d58a03b664de6ba7706f5b5bf7741c5d100


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
