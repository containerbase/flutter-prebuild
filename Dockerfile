

FROM ghcr.io/containerbase/base:10.1.4@sha256:394d214fab3be0bfd5ac126bfbc47900e64a0b1d8d36ad8acc156992ff530a48


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
