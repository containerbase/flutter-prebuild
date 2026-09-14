

FROM ghcr.io/containerbase/base:14.15.1@sha256:b92cf6dc5dc0f57d812597ef0610803e45f00dd7993e31f95f7fdfd3da715145


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
