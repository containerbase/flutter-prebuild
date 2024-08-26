

FROM ghcr.io/containerbase/base:11.11.8@sha256:84abb66e5b105e1023dfd4b43a114c7d09ca68820c7db6a4e0a7e1e18ffbc426


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
