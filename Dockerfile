

FROM ghcr.io/containerbase/base:14.55.2@sha256:d2b5ffe80eebcec4be21a95e7b675f9ef63324e1cf9e791e9ad02c7c944d15a1


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
