

FROM ghcr.io/containerbase/base:13.25.23@sha256:f377cbe2a9ee3b81f43692ae577f22d928c3bbf3556bfb36e14abe0a51e84027


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
