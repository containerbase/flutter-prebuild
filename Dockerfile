

FROM ghcr.io/containerbase/base:13.7.5@sha256:cf716be71cfd908afb59074739938f55857ff9d756665533be3ae61fb29306df


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
