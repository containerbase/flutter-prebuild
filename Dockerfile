

FROM ghcr.io/containerbase/base:9.33.7@sha256:bcdfe116322f1cc0213ac4293385b080243f247928ce77f160f4c04a87e24f77


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
