

FROM ghcr.io/containerbase/base:13.25.16@sha256:17ef41f5b3c2c6ee9aff68ad76b8edc2e094a022c8167c3364c21a1e0a14d962


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
