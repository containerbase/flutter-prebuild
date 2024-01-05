

FROM ghcr.io/containerbase/base:9.31.3@sha256:3b07361a05a00c89b721f078f5bf0ee3d0e8ae2dcd8f51d8e86a9dc2ef5e7b7e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
