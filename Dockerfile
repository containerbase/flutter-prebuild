

FROM ghcr.io/containerbase/base:10.3.18@sha256:bb0a91cdc03bcc58c286c86f83602155f47de332b94bfc2ebdcb83edfee45eb3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
