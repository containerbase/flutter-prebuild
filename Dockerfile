

FROM ghcr.io/containerbase/base:13.13.4@sha256:ff4900ce492d2ff933ed26948744aeac575c8441dcaba035cd57ec6626b5d036


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
