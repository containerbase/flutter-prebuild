

FROM ghcr.io/containerbase/base:15.0.1@sha256:e9730517acade74c851c6dce7c43f82a8a8e7bcc128b2c11ed1c01b34f2a31ce


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
