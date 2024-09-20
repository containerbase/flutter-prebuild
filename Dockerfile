

FROM ghcr.io/containerbase/base:11.11.21@sha256:8ca4b04e33c2af3c5afd0aad219c10c4066518bc8a6de353de411d9f7d97f75a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
