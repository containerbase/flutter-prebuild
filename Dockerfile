

FROM ghcr.io/containerbase/base:13.5.8@sha256:61f6a70c919f3be9e22f78039d046cd3443b7a5e09078b7fa0683db3791d8a31


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
