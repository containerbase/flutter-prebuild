

FROM ghcr.io/containerbase/base:9.23.8@sha256:c55f74e486fa74dde672f971b8025a13c4119bdda177363cfca600595a900117


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
