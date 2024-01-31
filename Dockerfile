

FROM ghcr.io/containerbase/base:9.32.0@sha256:d052b5122bdb61d2f2b59dd536a7ad4e67a369bb7529ff174f0f267c2304a42f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
