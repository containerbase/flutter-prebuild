

FROM ghcr.io/containerbase/base:13.8.44@sha256:2fc5ad34e5fe692ac6dd681deab03533faaf0c1deb8d3a24244261fb57346a5a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
