

FROM ghcr.io/containerbase/base:11.5.0@sha256:0009a535656ec8b5ac7715e272d70aab81f3c85479cb8948621709cede31dcc0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
