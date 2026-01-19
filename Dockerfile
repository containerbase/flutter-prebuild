

FROM ghcr.io/containerbase/base:13.26.5@sha256:e79da12a49299dfa704ad77cad29e9cb41457105ea3a1e721128c5a0dae28cfd


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
