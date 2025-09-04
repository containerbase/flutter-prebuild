

FROM ghcr.io/containerbase/base:13.10.15@sha256:0b643f9332464ab8203bb68512fbe1d7958cbe42b1919f6c0bdaa839121261a6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
