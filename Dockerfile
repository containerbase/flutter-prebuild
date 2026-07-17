

FROM ghcr.io/containerbase/base:14.13.2@sha256:690e3a966166453ad571d226336ccc479230bd7da963a6ea6318045822c8c193


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
