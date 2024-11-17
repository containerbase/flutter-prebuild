

FROM ghcr.io/containerbase/base:13.0.20@sha256:50ec77fcca858e7a706e99ea64185fb357505e3614fed09c68b3c347bbeba7f5


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
