

FROM ghcr.io/containerbase/base:14.6.22@sha256:fa65186d35c3391fc9d92f2a2b8b133f8fa84bf44cd5dc130d193a13bb1a5711


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
