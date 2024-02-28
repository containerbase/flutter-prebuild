

FROM ghcr.io/containerbase/base:10.2.0@sha256:dc2e06891ec539b59d32e0f684f168ed869b7d329d2aa7c49fa4efe09de38b4a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
