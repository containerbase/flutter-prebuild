

FROM ghcr.io/containerbase/base:9.30.5@sha256:ac6ec2e949b7228ce495271cf4e9de915bcd1b013e8b2c762effa18576457b60


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
