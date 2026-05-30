

FROM ghcr.io/containerbase/base:14.10.21@sha256:4cf92f44244a0e448c9d1579a5d199e6e0c773d233cd6c00513e3448d7cb8fe9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
