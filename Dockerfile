

FROM ghcr.io/containerbase/base:14.4.3@sha256:bee14c66d96fe25506fc319ae2c3c9a0fe3fc20c4c711182ab9c20bb5c306e3d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
