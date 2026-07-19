

FROM ghcr.io/containerbase/base:14.13.7@sha256:2a0d91167dd047ffdea4be0965dc67fcfb152d6f53a9d346d4c04a5eccd3af86


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
