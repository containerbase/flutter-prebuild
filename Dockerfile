

FROM ghcr.io/containerbase/base:13.8.54@sha256:824592e21a2e9420e4ac2b26850604e0a5ffd717d09cc7cf1ff5edade9d0034b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
