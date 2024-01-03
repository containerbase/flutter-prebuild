

FROM ghcr.io/containerbase/base:9.31.2@sha256:ad72c6e101086648ed03712f8b535935e259a539703ebb0b4bf63efcc0e1558a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
