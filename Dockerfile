

FROM ghcr.io/containerbase/base:13.8.26@sha256:e93481ddd75828744f2b69c0783a14999b263dcf78915f2639867e055a87eab7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
