

FROM ghcr.io/containerbase/base:10.13.1@sha256:bad6ed0cc3323117372e7b337339a8a4d4b2a962da463ec1a7baf24ffadc54f4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
