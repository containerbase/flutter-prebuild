

FROM ghcr.io/containerbase/base:10.6.12@sha256:c25753ff3b22b70bb4f3b3420dd833142ce258370eddaae465c5cab199fb07a7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
