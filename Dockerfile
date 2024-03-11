

FROM ghcr.io/containerbase/base:10.2.6@sha256:bfaa277ebb8e51fe33167250c55dc857fbf929916457e3559676ee0416cda162


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
