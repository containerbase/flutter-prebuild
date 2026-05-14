

FROM ghcr.io/containerbase/base:14.10.11@sha256:a1f4b7a99af7923343d388b4a179def047449f27c6eb93c240586863094570b7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
