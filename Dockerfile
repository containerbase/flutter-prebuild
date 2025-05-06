

FROM ghcr.io/containerbase/base:13.8.20@sha256:8eb64322e345dd10a7874c88005e3ab80092694acb91fd04f2bd854f81e2ece9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
