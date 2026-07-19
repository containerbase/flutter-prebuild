

FROM ghcr.io/containerbase/base:14.13.8@sha256:d8d4596e8c611aac402842fcee265b2723eb44669089e6c216497a2c2b0774b9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
