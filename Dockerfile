

FROM ghcr.io/containerbase/base:9.23.11@sha256:1c0284d0dac8e024177da0bd01dd514c53db0a5fc9385d8688878a77164e645d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
