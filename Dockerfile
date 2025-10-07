

FROM ghcr.io/containerbase/base:13.18.0@sha256:2e5be16694c33e809a99fbce699a2560683589e890d0ff0a9a0b533d204af510


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
