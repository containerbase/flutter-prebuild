

FROM ghcr.io/containerbase/base:13.25.2@sha256:3d2629931b300cea60ed88fe80c0aa2678c7aa78bf34311511f50960de6b7cb5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
