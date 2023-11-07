

FROM ghcr.io/containerbase/base:9.23.13@sha256:d14b5f27fae55a2a016a2ddd116508d95fbb4269d85f845a6ede57f342265014


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
