

FROM ghcr.io/containerbase/base:14.36.0@sha256:9c407668c26782f81d77d8e5ec30a8159f0c78d13c8cef1b271b2d5f982526cf


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
