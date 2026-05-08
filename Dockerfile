

FROM ghcr.io/containerbase/base:14.10.3@sha256:8fac17d1f8e9b1907a14c802a02679de86dfa13f42ee1f873c150a85f4a8a77d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
