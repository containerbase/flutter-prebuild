

FROM ghcr.io/containerbase/base:13.8.55@sha256:c8d51a4b326193f1e210e30880fd482ff24b3a6f15c9b16c1f1a964d8aa70968


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
