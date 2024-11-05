

FROM ghcr.io/containerbase/base:13.0.5@sha256:7387ee77d85a0a2311a4b692e44a08f04edb3a115f644d7c8f36b770763d699d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
