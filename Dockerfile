

FROM ghcr.io/containerbase/base:14.9.5@sha256:2852f7e2784fb21e745325a81c9beb1906be51b79956376eecf9ce57dacf6fd0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
