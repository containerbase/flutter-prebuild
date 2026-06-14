

FROM ghcr.io/containerbase/base:14.11.2@sha256:2f30a045b55d2f743d63bb916c6ce48d905e69a34619926740cd5261fbdaeadf


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
