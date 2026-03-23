

FROM ghcr.io/containerbase/base:14.6.7@sha256:a610daced307d8c7e08293998ff6e661317630a75b27f4da08a0799db4d6a555


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
