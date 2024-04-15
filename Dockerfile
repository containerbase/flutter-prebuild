

FROM ghcr.io/containerbase/base:10.3.14@sha256:24e5856a7f867bc9dbc7b1280f2458a732f2a70a8128e034cdbd0f74c2f86452


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
