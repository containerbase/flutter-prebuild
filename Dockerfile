

FROM ghcr.io/containerbase/base:13.1.0@sha256:f077fbe432f0ba51cff5f18d0f387500cf4d4e6c253084fe906e8fc6885ce9b9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
