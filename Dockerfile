

FROM ghcr.io/containerbase/base:9.20.11@sha256:9bd603648e648ba5c80cb48f7292c46c9523b4786c6d10320d44a50aad7b7eeb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh

WORKDIR /src/flutter
ENV PATH=/src/flutter/bin:$PATH