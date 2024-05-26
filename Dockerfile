

FROM ghcr.io/containerbase/base:10.6.16@sha256:dc8294bd9b74c0208efed8887f42971b52e537c45d5317eab5b1f3d59f13f5e6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
