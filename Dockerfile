

FROM ghcr.io/containerbase/base:14.1.1@sha256:000021c8596320989f12ba80e4841f3f8a0705901308f9f6ac873bff8566662e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
