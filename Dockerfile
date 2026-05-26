

FROM ghcr.io/containerbase/base:14.10.19@sha256:9d6f5a41d87448d5026dbd52552a2caa78094e15429356854ceb29aa404b0c47


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
