

FROM ghcr.io/containerbase/base:13.8.66@sha256:70fc43c8b3e96c665a5a824afc7fabbf429aaaeee9fc442f0b852faa4f2f4bce


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
