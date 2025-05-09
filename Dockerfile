

FROM ghcr.io/containerbase/base:13.8.24@sha256:94397043fe1448235e00d481678bb1375974a68453ee173eaf21547d660cd0c6


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
