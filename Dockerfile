

FROM ghcr.io/containerbase/base:14.69.1@sha256:c985f103e60725b00c4a52506a94367275600e9cbd1bd8bb315a27f73688b981


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
