

FROM ghcr.io/containerbase/base:14.7.3@sha256:594cab76fcaa4a237ac27a9a9dc82ab6aee46643c75ec42e74680e93ed3593b9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
