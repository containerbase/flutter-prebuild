

FROM ghcr.io/containerbase/base:13.14.1@sha256:5918b4a1f93dbff9ed507ccdbec9a1570c7eaeed5187f8b545adab4ff1f3c040


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
