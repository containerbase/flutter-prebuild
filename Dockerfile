

FROM ghcr.io/containerbase/base:13.10.11@sha256:fdd802425ea9d307f6e6f80eadeddf764f72b5a651dbd03f94fb7cd9e31cfac5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
