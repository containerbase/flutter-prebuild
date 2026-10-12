

FROM ghcr.io/containerbase/base:14.32.1@sha256:c2e8e1ed4eb1279458678ee3f59798219680a3f202a4fd0f2f4f567c17982ca7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
