

FROM ghcr.io/containerbase/base:13.3.0@sha256:1c41abb8eb0ae06d6b10303964bc6f00f4873da1afd5053d9b468128b76e478d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
