

FROM ghcr.io/containerbase/base:14.13.6@sha256:ef0eba60f92f3b5aa017d9a41e500f11502a2bfa75d2d743a0a9133529d022e6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
