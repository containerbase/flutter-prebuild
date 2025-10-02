

FROM ghcr.io/containerbase/base:13.14.6@sha256:380bc83ea4cfe824ef1296f9400bb861e7065a1f89c9372ed7df743699d8ca1d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
