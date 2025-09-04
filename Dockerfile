

FROM ghcr.io/containerbase/base:13.10.16@sha256:1ec4ae991cd94f1ec1f9e7f2f19f397d61cbb88b4ad4270b1d3f3de230fedc5f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
