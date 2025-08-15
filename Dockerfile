

FROM ghcr.io/containerbase/base:13.10.1@sha256:1439aadfae39ace7285585483d82517713e4057a00d470a618a3596b4c49ed73


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
