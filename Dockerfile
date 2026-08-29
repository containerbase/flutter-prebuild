

FROM ghcr.io/containerbase/base:14.14.4@sha256:3ff7f9a6393a0a5e0f7b3bfeac114c9aab95a909bb580986a33617daab7e14a3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
