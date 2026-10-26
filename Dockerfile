

FROM ghcr.io/containerbase/base:14.52.9@sha256:7829d02a3cd28f1662fc716cf3c1cc0c674f57e20ec4fca99b2aca62aa036973


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
