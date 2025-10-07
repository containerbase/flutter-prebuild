

FROM ghcr.io/containerbase/base:13.18.1@sha256:6e73cb6e90a0ada6b5dcf2ad193eb3a83f60b07ee0c7775ed7e02977f02582a2


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
