

FROM ghcr.io/containerbase/base:10.3.4@sha256:b1455e48a98351a69ba0cedb4311b6f6dca70fe5f5c6d6be28ed8903eca60e9a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
