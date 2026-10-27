

FROM ghcr.io/containerbase/base:14.55.1@sha256:fc248e5ee4a5daa6d876fe291b21c90529baa55853142f19d9883a94bd624a68


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
