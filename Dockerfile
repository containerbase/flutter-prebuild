

FROM ghcr.io/containerbase/base:13.4.5@sha256:c0b402890bfc22a8c1bb6fd4bd5687397d390d5936fa441f94800a08eadbe273


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
