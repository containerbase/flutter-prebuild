

FROM ghcr.io/containerbase/base:13.10.14@sha256:428d383d26277041b2dba63e73ead1d4eef5395ba89885ba92fafa24ee92c3d0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
