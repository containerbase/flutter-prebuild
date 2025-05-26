

FROM ghcr.io/containerbase/base:13.8.34@sha256:0d748a26b90a180ad706938c3a49467d9c93e736bb5f0a2534ee0e2b496107da


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
