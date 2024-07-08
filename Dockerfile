

FROM ghcr.io/containerbase/base:10.15.3@sha256:37567978df0d946a1d9fd355bc9cc2317bea3f8158c637c8e8d4ef42a9d34af9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
