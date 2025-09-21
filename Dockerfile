

FROM ghcr.io/containerbase/base:13.13.12@sha256:e746df1a32cfcda57f689ac4793dfbca5bec27d17e5562f3c77d5eba5bd098f6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
