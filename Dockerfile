

FROM ghcr.io/containerbase/base:14.66.9@sha256:1311db3f04cbb4ff7e8c06468237872e9c1acea1ab6badc38f3e00dc9f931d67


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
