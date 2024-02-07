

FROM ghcr.io/containerbase/base:9.33.5@sha256:4167fc9f60bffd61245f83a69f5a049f0c919c58742eedba58e10d382aaecd38


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
