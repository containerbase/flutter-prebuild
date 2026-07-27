

FROM ghcr.io/containerbase/base:14.13.11@sha256:2f3ff1e9cb500d36ccdeb4aae780b33b206b4c5713328c2e48c069e674daf4b7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
