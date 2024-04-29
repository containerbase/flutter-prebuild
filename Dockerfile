

FROM ghcr.io/containerbase/base:10.5.2@sha256:97f4e4abced8f5a63b57557c84039e512616273845128a32d3aca95321627a5e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
