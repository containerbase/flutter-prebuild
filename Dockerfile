

FROM ghcr.io/containerbase/base:13.23.8@sha256:ae212c6ef8d5b10de151426fe0207e5472fd4e65962af656f1d8f35f5971c8ff


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
