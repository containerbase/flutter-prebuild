

FROM ghcr.io/containerbase/base:13.12.2@sha256:a5cd10956bb0b0febb4383863e96cce9727832a24c87349ce65e3dedfaa4063e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
