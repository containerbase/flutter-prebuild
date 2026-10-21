

FROM ghcr.io/containerbase/base:14.47.0@sha256:6b2e8030d47d66a212c8481298c652e62a2af718c79822ab244eb0103ad5ded7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
