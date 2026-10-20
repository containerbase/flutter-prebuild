

FROM ghcr.io/containerbase/base:14.44.3@sha256:7d287f1b251352728bed1df465cdcf4b89f629acb76fcff03739bd968788ac6d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
