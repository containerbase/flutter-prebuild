

FROM ghcr.io/containerbase/base:14.12.11@sha256:9b8924908d4dd8fc0bf47051d3a27db7a835751ec5f4c2bed25fa29202e0733b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
