

FROM ghcr.io/containerbase/base:14.4.12@sha256:002f0431c03e26054956313950f83fc28a76915820f4fbc5c92205c765ac23d7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
