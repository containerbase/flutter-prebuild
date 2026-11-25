

FROM ghcr.io/containerbase/base:14.70.0@sha256:e760a3f8b3ab14137f916fe5aa4cfdaf0516d265697cde47e81faf2f723f3ae4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
