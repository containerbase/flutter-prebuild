

FROM ghcr.io/containerbase/base:10.3.0@sha256:cae7416cdddf385891ac4064db49889359a4a08089eeca534ab720d422085deb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
