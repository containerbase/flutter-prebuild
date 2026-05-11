

FROM ghcr.io/containerbase/base:14.10.8@sha256:43b66da1f303bcc8a3618c4995768e8aa16fdc824094c9cda509ecbb56a19cae


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
