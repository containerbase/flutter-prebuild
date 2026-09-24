

FROM ghcr.io/containerbase/base:14.18.1@sha256:263b8061944826b060f7112794d4a8f7457d589934714fb97da269c710212783


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
