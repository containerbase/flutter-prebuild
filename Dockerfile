

FROM ghcr.io/containerbase/base:11.11.0@sha256:ca03a334e8e3959e72e63f9a5860f98c564955be52ce66be764ebe81d4127fc2


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
