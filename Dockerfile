

FROM ghcr.io/containerbase/base:14.69.3@sha256:d998a3bc2f8ccee4394c40ecde8e599a8fa240b782365ca088a23143fe3335c3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
