

FROM ghcr.io/containerbase/base:10.15.2@sha256:0d11770eb8dadf082bfcec1a0e151f4993fb088808d42c83913e1080997a327f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
