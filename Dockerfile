

FROM ghcr.io/containerbase/base:14.59.5@sha256:1536da7dfe4f3ddb19c379168b391f08eea3531748979166165b13904164f6e1


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
