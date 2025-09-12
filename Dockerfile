

FROM ghcr.io/containerbase/base:13.13.0@sha256:6ba2a71a8d21c48d5055cae7e177382890a48d6b37de47905d5172a28394fddf


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
