

FROM ghcr.io/containerbase/base:13.14.8@sha256:569b7e3dbf2e53c536930877c12af394f594127f1c9353f4d7f437b17ec774fd


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
