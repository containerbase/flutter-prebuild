

FROM ghcr.io/containerbase/base:9.30.9@sha256:e8b28561327a1ca12d693222ece51b8284e65f9e9e5efe2052a42d7f36412ec4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
