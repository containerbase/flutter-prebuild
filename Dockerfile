

FROM ghcr.io/containerbase/base:11.6.5@sha256:e209ba382166e71516f4808779a58f1885c962c3740fdbb12b0627e6e502cae3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
