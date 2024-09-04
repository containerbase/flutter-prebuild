

FROM ghcr.io/containerbase/base:11.11.10@sha256:275a5a4af8f25305c86881e756b9f69e994bf4d5ec5548731573f654cceef1fe


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
