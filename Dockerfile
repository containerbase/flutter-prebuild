

FROM ghcr.io/containerbase/base:13.8.7@sha256:ba31dc44944a95c1263e6bf102b3ea799ca6c449db5e5ce83ff6f13802a46f1b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
