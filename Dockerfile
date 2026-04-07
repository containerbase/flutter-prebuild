

FROM ghcr.io/containerbase/base:14.6.15@sha256:1f64cc9800aa391f863351b26e2365b395a7db937bef270aed09e0583860cc07


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
