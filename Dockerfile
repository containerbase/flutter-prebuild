

FROM ghcr.io/containerbase/base:14.0.13@sha256:b2f6a19f3efd11bc5d34cb863b2184f1d06c2c612dcb457eb277ddba402d5d94


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
