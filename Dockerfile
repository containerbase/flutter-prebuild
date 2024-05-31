

FROM ghcr.io/containerbase/base:10.7.0@sha256:b96aa33a0df3720b247f496fa2654fb9739f686da46d96c89ee03fd1dc3bd682


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
