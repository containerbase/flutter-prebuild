

FROM ghcr.io/containerbase/base:13.24.3@sha256:72b10305f0d7ac3eb4208d622d5ca9338c8184a312e28dbd7bdf91de79a21e10


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
