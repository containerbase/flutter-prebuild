

FROM ghcr.io/containerbase/base:13.20.5@sha256:daa607e61a89f2da4a81be195568cda0e8c673a750d6e24e42feec754cd96870


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
