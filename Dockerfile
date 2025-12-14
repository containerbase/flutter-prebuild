

FROM ghcr.io/containerbase/base:13.25.15@sha256:610479efdd106ae83620e546204ac51818db8951d4561ecf49f07390e3f2532e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
