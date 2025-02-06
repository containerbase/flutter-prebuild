

FROM ghcr.io/containerbase/base:13.7.9@sha256:581c542f5678879acfd3ee72e5161b0dffd6ac3ba0a6b4d64978351897253df4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
