

FROM ghcr.io/containerbase/base:13.10.3@sha256:82cc486a06f7734833359962355d6a318e2776cc09ca62312d7e12be3cbd686b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
