

FROM ghcr.io/containerbase/base:13.8.28@sha256:bb610fd705e4578d455a9abebea565c10b4a5d8bf629cb7306a165921cc8a55f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
