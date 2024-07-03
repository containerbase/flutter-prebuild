

FROM ghcr.io/containerbase/base:10.14.0@sha256:7df1d9fabb26f1825b3fb5483246d13c5411519e3003511b08e8962779446d58


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
