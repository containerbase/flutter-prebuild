

FROM ghcr.io/containerbase/base:11.10.0@sha256:d4b08fa2c73dfc455bb73aaf4a69ef98d60dc65991cc738f5f1bce6c4189c57b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
