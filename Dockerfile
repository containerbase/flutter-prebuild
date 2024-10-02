

FROM ghcr.io/containerbase/base:12.0.1@sha256:e11c4e4eadde9eac5a2e49be9d16e2d3596f3d5e0f6e742f887e91375d922961


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
