

FROM ghcr.io/containerbase/base:14.4.2@sha256:433f589c69ccec80f503161a786df2c45f6247c36a8f8534f845b5bd37c29e1d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
