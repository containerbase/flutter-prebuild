

FROM ghcr.io/containerbase/base:14.66.18@sha256:ef783875a4f1da2b918b88118ee3c7cbce5d987caea528a705cc1c67bbab25c9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
