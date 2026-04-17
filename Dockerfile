

FROM ghcr.io/containerbase/base:14.6.23@sha256:991db029c3f5ff31d7c1ed04217fe3365fc394f3e4f2163eaedcf9cadaf2decc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
