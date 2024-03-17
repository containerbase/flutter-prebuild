

FROM ghcr.io/containerbase/base:10.3.2@sha256:8a50e5059e82ed1c5fb13b191a7855b1d698e0810535207f1bacfb998203edfb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
