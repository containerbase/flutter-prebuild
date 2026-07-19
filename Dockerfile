

FROM ghcr.io/containerbase/base:14.13.5@sha256:44a0045408d85900ebd5a915bd78fcf59f832373cb791479568f808fccb182f2


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
