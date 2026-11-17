

FROM ghcr.io/containerbase/base:14.67.2@sha256:98cb11c2825a3ebdc1fd75a12cb22d0cb2e7de4d64acb3cfac7c547bc7cc9f8f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
