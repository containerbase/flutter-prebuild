

FROM ghcr.io/containerbase/base:14.12.5@sha256:66bb4a6cd02fd923bc15c330a62efb1b78c433c83dd425b40f6aace06c249d13


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
