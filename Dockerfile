

FROM ghcr.io/containerbase/base:13.8.29@sha256:a3f01f407a341fa871620f269c7f6c8151262201ee79e7c19376f425dc7de3f0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
