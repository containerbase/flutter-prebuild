

FROM ghcr.io/containerbase/base:14.14.5@sha256:72ef57cb224c7868e22a6b068d71b1ec538926fe1fcfc6a561d9821d14cc81ff


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
