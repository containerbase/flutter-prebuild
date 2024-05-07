

FROM ghcr.io/containerbase/base:10.6.5@sha256:f2ce411f0f9c0164f24fab6c9f97f0818b3fad82747aa2e9b14e7a4812606cf0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
