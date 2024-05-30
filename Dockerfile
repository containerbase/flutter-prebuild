

FROM ghcr.io/containerbase/base:10.6.18@sha256:b8900f023087af1dccb0d51bca36f21206acab6bb36aa67c9c80984353bc20d3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
