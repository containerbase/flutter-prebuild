

FROM ghcr.io/containerbase/base:13.12.0@sha256:32b21d8fd7e3b984e57bbb42c50bb9dcb025a6a045e8a661e9717d69a8be0ffd


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
