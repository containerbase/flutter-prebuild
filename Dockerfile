

FROM ghcr.io/containerbase/base:11.1.3@sha256:c2ab937029951e8c59e1c55c2c213819f5de01b69e8b7b5cc82e067c4919a2a0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
