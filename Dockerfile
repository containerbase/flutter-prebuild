

FROM ghcr.io/containerbase/base:13.0.24@sha256:5015941c82e6143de4c1c0afbea6e9a6183cf60fb0ee7d8b47ff3ec9dfa03b69


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
