

FROM ghcr.io/containerbase/base:13.10.21@sha256:19e1caafaa0c8f61f1c7cc65581cb16f8335af12f40ef1e47dff06958bbbabfb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
