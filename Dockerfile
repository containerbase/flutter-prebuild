

FROM ghcr.io/containerbase/base:14.31.2@sha256:ae2543f4119662430f7a5cce8c4e4dd7bf6512b5753fc2658ec60c9f29397888


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
