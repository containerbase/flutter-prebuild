

FROM ghcr.io/containerbase/base:10.4.0@sha256:01eb3072abc14562afd63fe4251b8fb5ca9ac0f4a41561cd3265d6bd140d17c4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
