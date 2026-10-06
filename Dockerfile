

FROM ghcr.io/containerbase/base:14.28.0@sha256:e2e3892c415aaf7068b7625e223141f61fb7667379d8fbe72dfc10e0924507da


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
