

FROM ghcr.io/containerbase/base:12.0.0@sha256:5f93be4c2039970faf2d6dee0c059caafb81519f13b147007999032a34fceaee


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
