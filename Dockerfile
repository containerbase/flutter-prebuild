

FROM ghcr.io/containerbase/base:13.24.1@sha256:e9a158665928a0823f197e941f06338bf479c41a7f843757f092e7e56f2a4bec


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
