

FROM ghcr.io/containerbase/base:13.8.50@sha256:b9da075fc6cc37bbbcf02e775806ff00c9e28773ea2c3673fd869e460871017e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
