

FROM ghcr.io/containerbase/base:9.30.6@sha256:91b6c89bb3fed8177671b2a1d28ce5eb506ddea748c1a5357fe756c40d177cfe


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
