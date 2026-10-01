

FROM ghcr.io/containerbase/base:14.24.0@sha256:6c58ba9f5a53edbc9f12f9ea05d075922120ef51c4579dccbda5c5d64ce6fd83


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
