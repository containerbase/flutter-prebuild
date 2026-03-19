

FROM ghcr.io/containerbase/base:14.6.6@sha256:8430fc432cd49c6931ecbf36c7a45fdfc127c46228bd91d9feb62a64a5493eb2


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
