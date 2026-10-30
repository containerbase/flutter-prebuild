

FROM ghcr.io/containerbase/base:14.58.0@sha256:e799bbbd537afdc2fdcc789ac112b3c307cd9a1ffbb2489053336ca5c252be09


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
