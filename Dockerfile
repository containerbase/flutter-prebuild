

FROM ghcr.io/containerbase/base:10.10.2@sha256:c092646c8047cf385d8cea997fa2e43ea877c3d8f918d02ed20e6429c06cfc3a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
