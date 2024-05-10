

FROM ghcr.io/containerbase/base:10.6.6@sha256:406922d90a919e8e4687db799dac3cd9ba58dec7fa1de67a67d97466a70d2b8a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
