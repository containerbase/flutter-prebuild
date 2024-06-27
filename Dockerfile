

FROM ghcr.io/containerbase/base:10.11.8@sha256:f5a6e43f69f66bfe29e0a55e10f7211676e5afd2948ab68943851cfca234d58d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
