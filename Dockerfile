

FROM ghcr.io/containerbase/base:9.30.8@sha256:0a2feda2c7e19223589d68cc034d4d473ffecb136a88547ffa3f1a708189cbb7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
