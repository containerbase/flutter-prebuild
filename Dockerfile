

FROM ghcr.io/containerbase/base:12.0.3@sha256:066de862aa5ca7d33756255ad41afcaf965c6cc51c5cdb65b20d6d389580e01e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
