

FROM ghcr.io/containerbase/base:9.33.8@sha256:6def053e3b358b900d377affdbd0d64fad0e5b0ecbedc0773545a432a5fc5e26


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
