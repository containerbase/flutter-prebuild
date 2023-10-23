

FROM ghcr.io/containerbase/base:9.23.5@sha256:e533b0de6bb49cfef937f29f9277264415828406cdd7bfe89ace0180545d733a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
