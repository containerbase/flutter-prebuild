

FROM ghcr.io/containerbase/base:11.6.0@sha256:dfa1770c45ddce16f755c0cd424c6b36c8ff705c636150587d527dfea02059e3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
