

FROM ghcr.io/containerbase/base:14.52.5@sha256:8be7848e5b8440713f60a52727e625c7f862d1ab6e5caf9818095ac348a56b54


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
