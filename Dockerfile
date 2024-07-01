

FROM ghcr.io/containerbase/base:10.13.0@sha256:ec24fffe654f2f90a499aa1491db83698d040b18a169c113009485d6356c8e0b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
