

FROM ghcr.io/containerbase/base:10.10.0@sha256:1c7b5551c99f2e4ecb43b2b40ab31e2c0cbdf996e25615ca9af9cb4c506ccb11


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
