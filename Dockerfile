

FROM ghcr.io/containerbase/base:14.10.6@sha256:3a6cb245a58a33d951b545d3feafabdf9c0f2f63c61b47fbf462b38c3ded92e4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
