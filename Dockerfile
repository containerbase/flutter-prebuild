

FROM ghcr.io/containerbase/base:13.8.3@sha256:81461c7705c65631c5a5b93b0953ca899aa452297856952756baa2b25509047c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
