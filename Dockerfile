

FROM ghcr.io/containerbase/base:13.8.18@sha256:bdf6f80a5c5bc64a2b1ab6d31745086d57d7b11103da32a98ed81852d24f62fa


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
