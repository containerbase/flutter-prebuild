

FROM ghcr.io/containerbase/base:13.24.2@sha256:ec7d7a7fa9e69a4909f33bb0ed846021cd97f92b21530eccf187153405af2eca


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
