

FROM ghcr.io/containerbase/base:14.10.7@sha256:54587899256900502163b089fe86ad9f959f4b8ba02e38338c684712832ae6d2


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
