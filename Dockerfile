

FROM ghcr.io/containerbase/base:11.6.6@sha256:7466b1223db1edf49580ca1cec5c81394739748f18598028ac2099f0e2ef4dbf


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
