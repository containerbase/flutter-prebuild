

FROM ghcr.io/containerbase/base:9.31.5@sha256:c36d6ec3560dddd93c37320af6288cd6da4923026eb667d0ceb64fbb78e79faf


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
