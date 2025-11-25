

FROM ghcr.io/containerbase/base:13.25.3@sha256:936e07abbc9b4c6e28c010f70aa63b25b41c214c7f185d4deb1bb1e2cfce390d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
