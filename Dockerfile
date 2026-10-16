

FROM ghcr.io/containerbase/base:14.41.1@sha256:9bf0c432aad042fec7112905e8e443b4e1ad3ee640a85abd718fd0893d3a060d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
