

FROM ghcr.io/containerbase/base:14.14.6@sha256:e6208216dc6361995f3bca5b7c345b9be3e7723d45d311c6347376ff8adc8dd2


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
