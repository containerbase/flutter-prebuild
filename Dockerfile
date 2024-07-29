

FROM ghcr.io/containerbase/base:11.1.7@sha256:7661c62d53cb84b42cdd339050d6ccc3d5a46e79c78a07006be7e6fe70f0985a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
