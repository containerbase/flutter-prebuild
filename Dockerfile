

FROM ghcr.io/containerbase/base:14.4.7@sha256:c9032170ebe42c7d4b786ca882cd6dabb8ad9c9bbd4702ea12ef9bf724843485


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
