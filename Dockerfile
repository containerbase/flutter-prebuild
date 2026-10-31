

FROM ghcr.io/containerbase/base:14.59.1@sha256:ba9a5cd3b4e15ab467c6d7a15ac159aea369bc727d02931dba6409d3a9a1739e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
