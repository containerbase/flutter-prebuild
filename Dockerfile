

FROM ghcr.io/containerbase/base:13.23.20@sha256:b7d8ddc9c0577093d7ad2342c4e79f5e98c2e288252be6fe7e2e69be8f0c6605


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
