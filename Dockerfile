

FROM ghcr.io/containerbase/base:13.10.20@sha256:8c0be589f3d31a6b2d3087613e5911ed0952ca6005fce69f125f869349a8bc96


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
