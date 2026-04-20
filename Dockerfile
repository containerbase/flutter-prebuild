

FROM ghcr.io/containerbase/base:14.7.0@sha256:72494230cc680301536d1eb01160a16e0adc5fb637c4743865a4511fc04915cc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
