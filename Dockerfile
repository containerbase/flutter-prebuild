

FROM ghcr.io/containerbase/base:13.25.4@sha256:ac311de198090a6dbb1724c27e17c73050aa8b4039c0894f5c395d75bd7009b1


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
