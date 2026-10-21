

FROM ghcr.io/containerbase/base:14.46.0@sha256:6694ee845a72c21d20055d7b1f87836710ec7661a34131523dc9608d8d01b268


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
