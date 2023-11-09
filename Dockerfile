

FROM ghcr.io/containerbase/base:9.24.0@sha256:82e02e48136e3d3e5d5d1bafd59acb5dbcfdf72b28f012de71757edeb203fc3d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
