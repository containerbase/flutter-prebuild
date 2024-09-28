

FROM ghcr.io/containerbase/base:11.11.26@sha256:61fbccbf584bf2f10f5640598fb710c500a2b0d4e723ec2591252d5a279d3f85


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
