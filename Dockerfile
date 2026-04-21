

FROM ghcr.io/containerbase/base:14.7.2@sha256:dee83a089008fd01ca62ca70701e5887e42faecaea89340571c620b3bc1c862c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
