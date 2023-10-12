

FROM ghcr.io/containerbase/base:9.23.1@sha256:0f43b97350b7151ac7b396d8f4a6e4e8387de185764c602343c2b20a5879cb6d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
