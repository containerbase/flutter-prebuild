

FROM ghcr.io/containerbase/base:14.41.0@sha256:0684699bd1e4ea974818e06f448e6bc987a43b4ddc6849402a028515c11961fb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
