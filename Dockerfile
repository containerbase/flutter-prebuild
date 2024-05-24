

FROM ghcr.io/containerbase/base:10.6.15@sha256:4ca97d64f58f3dd66d467a8e0a17378dc2d2a9a3325e835dfd098a3d5c0315e3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
