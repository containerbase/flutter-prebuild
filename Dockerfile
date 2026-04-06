

FROM ghcr.io/containerbase/base:14.6.14@sha256:9c80af117229bfb52cfb29727ad0ebfe956421bbb13785ebd9936ddcd082a62b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
