

FROM ghcr.io/containerbase/base:10.1.2@sha256:4c64cb0c47d75836e0b34ac61e1d108a4035b3abe2b5490db172d9599d0ee023


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
