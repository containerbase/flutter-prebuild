

FROM ghcr.io/containerbase/base:13.8.12@sha256:eaedf075151a1292ffaa158e035a771bfa376d27954e703749874b0634e0bc3c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
