

FROM ghcr.io/containerbase/base:14.37.0@sha256:80417733a8f9a3b2ec8aa027c3b8183980175be1555b07789b143ba426a427ec


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
