

FROM ghcr.io/containerbase/base:10.2.5@sha256:408f706a1eec2eb41ebb4310414cd934b532735a2096849476d84e679620caf1


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
