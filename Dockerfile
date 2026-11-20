

FROM ghcr.io/containerbase/base:14.68.2@sha256:a78da54a185fa9ee862c92fca2cfe502aa94f615af0f40c34d50ba4ad818dec7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
