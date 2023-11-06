

FROM ghcr.io/containerbase/base:9.23.12@sha256:7200ea0cc7bb19a9d33881a14da2bc0208daf7553cadc0fff084ad158e372c50


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
