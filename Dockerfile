

FROM ghcr.io/containerbase/base:13.8.59@sha256:12a5ba995def0a5bf62eed579335897b8757b52f75e8d77d4c3c46e358770124


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
