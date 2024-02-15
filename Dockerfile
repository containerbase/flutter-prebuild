

FROM ghcr.io/containerbase/base:10.0.2@sha256:45fe8d0838d10207a28e6c9c91ec92ad4aad518acf788c8fc03f7f8a4ae531ee


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
