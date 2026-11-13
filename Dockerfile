

FROM ghcr.io/containerbase/base:14.66.25@sha256:f4ec8a2ec66b6098b5b2fc8411043182d767584534977576524779def24c38ca


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
