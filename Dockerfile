

FROM ghcr.io/containerbase/base:9.30.3@sha256:32073bcd537963b9abe3b424d96a67fc7d5457e71ca036f7f3db1b9ca2e3afc6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
