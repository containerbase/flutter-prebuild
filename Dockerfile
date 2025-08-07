

FROM ghcr.io/containerbase/base:13.8.63@sha256:5830c2a0ab7c9012011bb3fc4e66c04233a8f5fe9b06312489c90e3e4764748a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
