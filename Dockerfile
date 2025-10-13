

FROM ghcr.io/containerbase/base:13.21.0@sha256:b0c48e6d3690a48fc33fed6129fd0b9c7899793b035d47de57e6a479379cf655


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
