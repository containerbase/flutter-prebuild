

FROM ghcr.io/containerbase/base:14.68.4@sha256:091455dbb4507f3e4ff58d1e04c65f37c89c3b514b11156d38eb2f6de0206990


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
