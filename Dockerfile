

FROM ghcr.io/containerbase/base:14.57.3@sha256:426ad5882391c16eac69139f6c01740432862f23d9abc6a499cddf3eb287955a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
