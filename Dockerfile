

FROM ghcr.io/containerbase/base:9.23.14@sha256:eabe5abf590b520d274c1bebed69042e733aa17612470899388f5144ae1f8531


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
