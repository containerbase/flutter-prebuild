

FROM ghcr.io/containerbase/base:14.51.1@sha256:0b923f22d26ba1dabcc82c967ac72d0f9d0d0e7b89b591659e75654f269c9a2a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
