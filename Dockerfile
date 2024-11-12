

FROM ghcr.io/containerbase/base:13.0.15@sha256:fee1989906ed5dd6ca71ed199c647111cc0bcc8266481a35b8139334a0c46150


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
