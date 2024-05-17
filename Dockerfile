

FROM ghcr.io/containerbase/base:10.6.11@sha256:f794deebb50ecd22a84377f22bd70ef6d9341ffc8cb795114d28da7ae7dee48e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
