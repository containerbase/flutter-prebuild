

FROM ghcr.io/containerbase/base:14.12.2@sha256:7c501a9a0597b64a244755aa3009325f5992863ce5885acdefe7d2985d59e5f9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
