

FROM ghcr.io/containerbase/base:10.12.1@sha256:a40f3d9e8d46afb1e4dd200329b5a663b2e796f772748f67d1f53d4fa18e5ff8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
