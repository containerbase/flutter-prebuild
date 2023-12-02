

FROM ghcr.io/containerbase/base:9.26.2@sha256:6141ff30c1246c281db65043be438a77e4ced6e6f880a6ee3e4d3eade61bdcf0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
