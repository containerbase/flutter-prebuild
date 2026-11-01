

FROM ghcr.io/containerbase/base:14.59.3@sha256:4bfafce5c5e3c73e535dd3ba0fad14f316c7bc5d01cb8cfb27d30cdda2d353be


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
