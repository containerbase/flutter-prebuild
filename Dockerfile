

FROM ghcr.io/containerbase/base:10.2.3@sha256:d59671b0b497d0a3ce9360ecfc99cfc2ba4d8e3cbeb41daaa66e7f3b4261991d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
