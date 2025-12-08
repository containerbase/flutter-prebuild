

FROM ghcr.io/containerbase/base:13.25.12@sha256:99bce8e2f74678d1cd96a2e39a3abf7349f6821965f2d7565361665363454df4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
