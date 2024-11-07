

FROM ghcr.io/containerbase/base:13.0.11@sha256:fd35bb6b0e087c93afceb3296c6762c8f58fc4b69700087508fd001a3fda1bcb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
