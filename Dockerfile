

FROM ghcr.io/containerbase/base:13.15.0@sha256:0237959aa14e8320d731583c9d6239f85543c18ca093396d89c37d06c53051a1


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
