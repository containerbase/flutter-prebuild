

FROM ghcr.io/containerbase/base:9.26.1@sha256:97e5b9377cc6a258ee73be209fc10576d00c10d57cd3d0689b1f8cd4a4b37d57


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
