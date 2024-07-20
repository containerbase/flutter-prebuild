

FROM ghcr.io/containerbase/base:10.15.6@sha256:bf91e96a7b49cfd19a4f8955407494b15183a842e93717599f2969513cbabf1b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
