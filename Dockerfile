

FROM ghcr.io/containerbase/base:13.4.1@sha256:478bc2d5e7739b79eb1b8b35055c402dee594cd7e9e59254acc5415763ef9a7f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
