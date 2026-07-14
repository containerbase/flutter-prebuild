

FROM ghcr.io/containerbase/base:14.13.1@sha256:b66460afbf18d97ccecac8f193e183eb3e8b3918ccbbe3396706d5d364dfbcb1


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
