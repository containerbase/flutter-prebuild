

FROM ghcr.io/containerbase/base:14.59.8@sha256:53044fe442f5f9e675433bdade868d78db1fe1c5f09eac37987a28d78c521e1b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
