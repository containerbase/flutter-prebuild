

FROM ghcr.io/containerbase/base:14.14.1@sha256:ff5cec29c82fc83836115c9aff12456ed170cccf80d0b69c7c14834a2972fca3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
