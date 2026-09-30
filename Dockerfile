

FROM ghcr.io/containerbase/base:14.20.3@sha256:3380da53817544e45f70078298a0b35e9da20088de170f358aee75154415aea6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
