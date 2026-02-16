

FROM ghcr.io/containerbase/base:14.1.3@sha256:6d4bc7fa72cf5502489a06621efaa5db2fc3a023b7845e12bab9ff63831c8663


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
