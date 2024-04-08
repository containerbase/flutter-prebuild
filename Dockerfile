

FROM ghcr.io/containerbase/base:10.3.12@sha256:d5498f499c2cf918c18165254e0d45309e0f831b3e6fb83f1bca60e619138681


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
