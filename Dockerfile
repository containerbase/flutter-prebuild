

FROM ghcr.io/containerbase/base:11.11.4@sha256:0a082adc453fc0d8436c54267b95b76b2e9c4750e0b40c1348d8abd30af71d51


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
