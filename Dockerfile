

FROM ghcr.io/containerbase/base:14.59.2@sha256:bb019b8f49a5eab09254e41bf0d982a3690e98aeda9593287f407a4352b072a0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
