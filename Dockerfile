

FROM ghcr.io/containerbase/base:13.17.1@sha256:f95b0fdfcd6ed2b90291be5ce97547ed005f6084d60784f7faeb3eb95f9873ed


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
