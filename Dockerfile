

FROM ghcr.io/containerbase/base:13.13.7@sha256:de3ffa48fc017b3c2c34d60b93f952dc1f19d7ebee2aa5615801d77393d66500


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
