

FROM ghcr.io/containerbase/base:11.11.5@sha256:8bf3cd0de89656c19ce0bb9ce5202a57256f3a72bfa54001faf07e2f92f4e000


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
