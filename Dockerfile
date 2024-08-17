

FROM ghcr.io/containerbase/base:11.11.2@sha256:d1870d8fbc01b0d949b1aedd32684110e082213de14f92cad228f1d13053734e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
