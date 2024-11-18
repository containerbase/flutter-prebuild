

FROM ghcr.io/containerbase/base:13.0.21@sha256:8cec719c080fca375692439d7ac459a18fba433f65a0346edbaaec5bc50e1c0f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
