

FROM ghcr.io/containerbase/base:14.44.2@sha256:6b01e7a0da7bba215791531c3734543136c7e4fbf694ae8a8756d0e2eb2e3549


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
