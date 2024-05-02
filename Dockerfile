

FROM ghcr.io/containerbase/base:10.6.0@sha256:d333c18082018277eb616c92b0bec17d6b9d57a7f48629da5072a297d3179f2a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
