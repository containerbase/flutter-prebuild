

FROM ghcr.io/containerbase/base:14.10.10@sha256:e8c5b5a6f23a416c10c659635516db629bbe187e82b4ebe982e6b8d4b87c9bd3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
