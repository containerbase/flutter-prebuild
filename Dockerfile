

FROM ghcr.io/containerbase/base:13.8.13@sha256:3006b388b19d757f4056da1b317a39213b8c4fea1bd64c44f17ef9cd1ead81d4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
