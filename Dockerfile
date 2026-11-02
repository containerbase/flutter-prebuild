

FROM ghcr.io/containerbase/base:14.59.7@sha256:b2ff06032e91a9b79dd5761b3a4f1d68aba38c8d6a935a38e7422ffe72435037


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
