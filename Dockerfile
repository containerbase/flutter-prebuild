

FROM ghcr.io/containerbase/base:10.17.0@sha256:1f89af8600a4142a619c326a6e64b0d8d822233e355ce494e43fc6208b55c68c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
