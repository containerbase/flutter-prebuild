

FROM ghcr.io/containerbase/base:9.25.0@sha256:f0d880fff787b8a67b44f745d111b9336488754e7077903b91c4a761b5aee820


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
