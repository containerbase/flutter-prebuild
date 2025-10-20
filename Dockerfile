

FROM ghcr.io/containerbase/base:13.23.7@sha256:f66fbc64b8788361e6fc609eef5dc36c1fd183e60ee6d2391d49e07237b30a9c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
