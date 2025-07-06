

FROM ghcr.io/containerbase/base:13.8.51@sha256:4d0cd999085cd0aab45537b64de4453ec1612e56a5da9ec38be38ecef9ca3f92


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
