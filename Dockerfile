

FROM ghcr.io/containerbase/base:10.2.4@sha256:5c01098caba1402e2a9fcee108eb44c9e01e0acfbff836fef791dd7833cd1e66


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
