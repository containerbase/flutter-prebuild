

FROM ghcr.io/containerbase/base:14.10.13@sha256:9021e72da96ad1e11fe23759dcd7ffe8e53c01010854fa93b61cdb44ee44b6bb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
