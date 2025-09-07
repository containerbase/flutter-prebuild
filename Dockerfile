

FROM ghcr.io/containerbase/base:13.10.18@sha256:f067ccb9c6b61271602367ef1b4ac806516c5e7472ddd048af396f48ad52d935


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
