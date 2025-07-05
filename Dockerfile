

FROM ghcr.io/containerbase/base:13.8.49@sha256:0da349058b0a754d2871e8084495458a3f316fc13594c71000993e2524f954ed


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
