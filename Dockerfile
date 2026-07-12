

FROM ghcr.io/containerbase/base:14.12.10@sha256:897c18f748b59d02dd0ba4ae38e27602cbbe8aef8855256cde1a6d12296f4514


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
