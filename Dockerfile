

FROM ghcr.io/containerbase/base:14.4.8@sha256:1377301027b0146ea42e588ea614ca554533032498031bff9e6adc7dac777089


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
