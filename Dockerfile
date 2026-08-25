

FROM ghcr.io/containerbase/base:14.14.2@sha256:49687568305ca25bb762be584072ce86b0f0157547c44eda7412869a01ff9577


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
