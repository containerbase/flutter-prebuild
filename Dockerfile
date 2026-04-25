

FROM ghcr.io/containerbase/base:14.9.3@sha256:ff83565e46ce10feb84a2ecc620a3fc7348692f98ef2029019944dc0c6d55d7f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
