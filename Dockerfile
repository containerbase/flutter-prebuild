

FROM ghcr.io/containerbase/base:14.12.8@sha256:82477a5f6b5765035839365eb42d7993c85cb536b99b27f36e5b4cbc248f9264


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
