

FROM ghcr.io/containerbase/base:10.11.1@sha256:861ebb2016810500ce1709ffcaf04704afb176e5539f3c561708062f53b1c88e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
