

FROM ghcr.io/containerbase/base:11.1.2@sha256:2a81ece6b085eed6f5faaf8be4a6d696c977ee82d22258cc6629751ea821687e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
