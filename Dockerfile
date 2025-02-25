

FROM ghcr.io/containerbase/base:13.8.0@sha256:e574b2a87ac2ead295f2adc64b529dec684d211cb62bf0ddbc69a734e3212b8b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
