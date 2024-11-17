

FROM ghcr.io/containerbase/base:13.0.16@sha256:f24d77c9c0dd7136dd5dde836e787ec81e2393a3404aa3881ab945c377233103


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
