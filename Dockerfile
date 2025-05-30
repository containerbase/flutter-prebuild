

FROM ghcr.io/containerbase/base:13.8.37@sha256:63e55d7e39f3a3de00357b76f2e1a93054ce65c5b8c9bd816898e877b053706a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
