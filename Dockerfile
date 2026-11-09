

FROM ghcr.io/containerbase/base:14.66.12@sha256:3e155635e9a800dd8d5d091f8b0bc237217b1e721359dd88c2b6805ba123ef24


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
