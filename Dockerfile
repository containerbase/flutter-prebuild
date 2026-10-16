

FROM ghcr.io/containerbase/base:14.42.0@sha256:00fd23e50b309353d1ba0ffa53c2e989c2e9f65dc848a9b3849020a17c97ddc0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
