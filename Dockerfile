

FROM ghcr.io/containerbase/base:14.6.9@sha256:cc3893c06ba2b1f1fcc50b2f4c235113c0f20d38912df3b5cb39eab2e05423b9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
