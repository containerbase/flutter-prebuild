

FROM ghcr.io/containerbase/base:14.66.5@sha256:0c244e2d9bee5d3b475a85ae1eccada91b47ca2c632a96aa54501ecf86ddffcc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
