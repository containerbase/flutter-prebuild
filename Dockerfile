

FROM ghcr.io/containerbase/base:13.8.68@sha256:552acdc1d3aad2f5ffc5d6b3b399cd4eec7f404a28e294fb974b3ad64007749f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
