

FROM ghcr.io/containerbase/base:14.13.20@sha256:1101666385b71f92d2db25025b0a8d3cf5e8bed10029f6033d8da36a7cf5e297


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
