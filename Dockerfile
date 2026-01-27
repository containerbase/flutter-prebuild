

FROM ghcr.io/containerbase/base:14.0.1@sha256:973d8bd9d6c6a9f1e6e54df1be9b4661bf84e03363961a07dd9dbbb6250e3fa9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
