

FROM ghcr.io/containerbase/base:13.13.10@sha256:6be26bde4603ba6ad99cb72f0d6e07441534affa51c3fc2c6a44b16437d8eb7d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
