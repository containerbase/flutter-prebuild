

FROM ghcr.io/containerbase/base:14.18.2@sha256:944b2f62ab268624f3077600909441c69e60f40e78eb69d832ab1d488f54ff00


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
