

FROM ghcr.io/containerbase/base:9.30.0@sha256:e0cfc6f69790e6f1effeb4d83c7872d8752202088b47dde4848405c8710cc677


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
