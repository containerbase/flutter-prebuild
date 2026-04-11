

FROM ghcr.io/containerbase/base:14.6.19@sha256:e40e3261a844d4a7bc7681f7c7c5fed778adeeaa17c3554b4c9d6da1c358edba


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
