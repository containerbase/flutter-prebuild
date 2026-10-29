

FROM ghcr.io/containerbase/base:14.57.1@sha256:7c9aaa7b86a027d1d2de8a8670f911bb19787241b01e288abe1095c9e3c01078


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
