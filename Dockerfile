

FROM ghcr.io/containerbase/base:13.8.23@sha256:059a63d110f78368f6009036428e9c12b8d3c74d4271c0d8cf7248c99725a898


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
