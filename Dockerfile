

FROM ghcr.io/containerbase/base:13.8.61@sha256:1a2ea1bf6557bf9d988d2830e9b85c1e74b38f330e15731e4920da7c0854debd


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
