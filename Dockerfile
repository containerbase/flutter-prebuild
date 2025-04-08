

FROM ghcr.io/containerbase/base:13.8.10@sha256:114fefdccb1c1b9090dfa647e1802f4d5dbb36c1212fb642e2ed5f743bcc74ab


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
