

FROM ghcr.io/containerbase/base:13.0.10@sha256:d1af430b6c8bf2ff524049e24543aaf43f90c70fc23c18310ab55d01b6cef64e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
