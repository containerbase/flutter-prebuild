

FROM ghcr.io/containerbase/base:13.14.9@sha256:9b745e6d5ef249d3b42b0dd61993254599a395b2e3deab397708eccc86ae4e4b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
