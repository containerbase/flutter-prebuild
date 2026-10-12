

FROM ghcr.io/containerbase/base:14.32.0@sha256:f2704aa1a5c1bd5bf73658ec8b3ce4ec76b36f87a3e6593dcf6b52439e35765e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
