

FROM ghcr.io/containerbase/base:13.10.6@sha256:3c92d5b9abe872724f9876eef4a4643d7c4f8751611e55fd870e98a2da164a64


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
