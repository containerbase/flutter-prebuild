

FROM ghcr.io/containerbase/base:14.9.7@sha256:02ab3a98e39833f3f0b8e9210025ee413376a0f0e889ab882bf1bf7f64d78248


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
