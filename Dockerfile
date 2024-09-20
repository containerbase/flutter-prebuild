

FROM ghcr.io/containerbase/base:11.11.19@sha256:c49769b684f76e0c940e75eb280bae9c74f1757a008908d9812ad9e0e6aded9d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
