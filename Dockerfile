

FROM ghcr.io/containerbase/base:13.7.12@sha256:2196fac1d02596edc810f038146d9210d8f3ef67945308984652ea3a0a6f118a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
