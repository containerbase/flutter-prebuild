

FROM ghcr.io/containerbase/base:13.17.0@sha256:ad28a6c7ddc30f3695453bbab1ac4983b1b881956da08a35a2dd5e4a23f2a4a3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
