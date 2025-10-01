

FROM ghcr.io/containerbase/base:13.14.5@sha256:692c8a12e149481f214b5591e4a21af1433f853aa7e0f25559abca6d1d852d8d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
