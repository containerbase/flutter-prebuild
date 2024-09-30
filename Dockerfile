

FROM ghcr.io/containerbase/base:11.11.27@sha256:14d8b62ccd92c1e0e6ffd2cb58d825d6c64d33323c5fc0732dc67d21968fd34b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
