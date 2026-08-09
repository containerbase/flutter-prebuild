

FROM ghcr.io/containerbase/base:14.13.19@sha256:61bb7837974628d06a52ba1a9fcb5b09e2e6f64f5744946084ab60a9a7b24d2e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
