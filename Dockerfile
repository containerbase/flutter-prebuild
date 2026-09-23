

FROM ghcr.io/containerbase/base:14.17.0@sha256:30cb0ab2dcad8cc85b0c5b2ff3ac23e7fba993020e08316f523ac1048b6d933a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
