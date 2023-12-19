

FROM ghcr.io/containerbase/base:9.30.7@sha256:4cd023ec1e63d5c374daff3066a33dd9f6daf3aa68ed54350687b07985db4c33


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
