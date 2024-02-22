

FROM ghcr.io/containerbase/base:10.1.3@sha256:956a9b8b629a75fc6b6b4105adaf919d8e4cf0e260eb04bdef970f352c3fce57


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
