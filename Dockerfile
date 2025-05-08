

FROM ghcr.io/containerbase/base:13.8.22@sha256:7561f7e2f1d996bfcaf7cffbe2bb0b520942ef9e9665a4e71cf4ba1c7db26fd2


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
