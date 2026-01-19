

FROM ghcr.io/containerbase/base:14.0.0@sha256:c0cbd6d8b5fbaf5e596859e7a683d939a92b73e5839935f0b8c42316906fae95


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
