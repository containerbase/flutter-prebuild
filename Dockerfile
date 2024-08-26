

FROM ghcr.io/containerbase/base:11.11.7@sha256:8acc7310cdf1573c82fee6237bb692fd1818f81fb6e8675e74f9992a336f6ea5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
