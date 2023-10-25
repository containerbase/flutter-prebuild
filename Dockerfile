

FROM ghcr.io/containerbase/base:9.23.6@sha256:7eb71b5bcc0d67e1a60d8585895eab75b2ab131d9502331234feb458e82b09a5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
