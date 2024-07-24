

FROM ghcr.io/containerbase/base:11.0.0@sha256:5560879bc953b77edb6ddf0c214ba41c23883ad82e0e685a394dbb89f3b63d95


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
