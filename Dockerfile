

FROM ghcr.io/containerbase/base:10.1.0@sha256:ee1e5baf1e7abbe0e3e584f449676d109d7bc3d6c3f4226391e8a818d63455d5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
